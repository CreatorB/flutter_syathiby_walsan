import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rabbaanii_portal/models/response_entity.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';

const String _sessionExpiredMessage = 'Sesi tidak valid atau telah kadaluarsa';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      if (response.requestOptions.path.contains('gettokenwali')) {
        debugPrint('[ResponseInterceptor] Skipping gettokenwali path');
        handler.next(response);
        return;
      }

      // SPECIAL CASE: get_wali_santri.php returns MukholifSearchResponse structure
      // We need to keep the FULL response object (not extract just data)
      if (response.requestOptions.path.contains('get_wali_santri')) {
        debugPrint('[ResponseInterceptor] get_wali_santri.php - keeping full response');
        handler.next(response);
        return;
      }

      // SPECIAL CASE: detail_mukholif.php returns MukholifDetailResponse structure
      // We need to keep the FULL response object (not extract just data)
      if (response.requestOptions.path.contains('detail_mukholif')) {
        debugPrint('[ResponseInterceptor] detail_mukholif.php - keeping full response');
        handler.next(response);
        return;
      }

      var data = response.data;
      debugPrint('[ResponseInterceptor] Raw data type: ${data.runtimeType}');
      
      if (data is String) {
        data = data.replaceAll(RegExp(r'<[^>]*>'), '').trim();
        debugPrint('[ResponseInterceptor] String data after clean: $data');
      }

      if (data is Map) {
        debugPrint('[ResponseInterceptor] Processing Map response');
        final mapData = Map<String, dynamic>.from(data);
        final responseData = ResponseEntity.fromJson(mapData);
        debugPrint('[ResponseInterceptor] ResponseEntity parsed - errCode: ${responseData.errCode}, msg: ${responseData.msg}');
        switch (responseData.errCode) {
          case RestException.RESPONSE_SUCCESS:
            debugPrint('[ResponseInterceptor] SUCCESS case - extracting data');
            response.data = responseData.data ?? mapData;
            handler.next(response);
            break;
          case RestException.RESPONSE_USER_NOT_FOUND:
            debugPrint('[ResponseInterceptor] USER_NOT_FOUND case - throwing exception');
            throw RestException(responseData.msg ?? 'User not found', responseData.errCode ?? '00');
          case RestException.RESPONSE_ERROR:
            debugPrint('[ResponseInterceptor] ERROR case - msg: ${responseData.msg}');
            if (responseData.msg == 'no data' || responseData.msg == 'No data') {
              debugPrint('[ResponseInterceptor] Empty data case - returning empty list');
              response.data = responseData.data ?? [];
              handler.next(response);
            } else if (responseData.msg == _sessionExpiredMessage) {
              debugPrint('[ResponseInterceptor] Session expired - throwing SessionExpiredException');
              throw SessionExpiredException(_sessionExpiredMessage);
            } else {
              throw RestException(responseData.msg ?? 'Error', responseData.errCode ?? '02');
            }
            break;
          case RestException.RESPONSE_MAINTENANCE:
            debugPrint('[ResponseInterceptor] MAINTENANCE case - throwing exception');
            throw RestException(responseData.msg ?? 'Maintenance', responseData.errCode ?? '99');
          case RestException.RESPONSE_UPDATE_APP:
            debugPrint('[ResponseInterceptor] UPDATE_APP case - throwing exception');
            throw RestException(responseData.msg ?? 'Update required', responseData.errCode ?? '98');
          default:
            debugPrint('[ResponseInterceptor] Unknown errCode: ${responseData.errCode} - passing through with original data');
            handler.next(response);
        }
      } else if (data is List) {
        debugPrint('[ResponseInterceptor] List response - passing through');
        response.data = data;
        handler.next(response);
      } else if (data is String) {
        debugPrint('[ResponseInterceptor] String response - attempting JSON decode');
        final jsonData = jsonDecode(data);
        if (jsonData is Map) {
          debugPrint('[ResponseInterceptor] String decoded to Map');
          final mapData = Map<String, dynamic>.from(jsonData);
          final responseData = ResponseEntity.fromJson(mapData);
          debugPrint('[ResponseInterceptor] ResponseEntity parsed - errCode: ${responseData.errCode}');
          switch (responseData.errCode) {
            case RestException.RESPONSE_SUCCESS:
              debugPrint('[ResponseInterceptor] SUCCESS case - extracting data');
              response.data = responseData.data ?? mapData;
              handler.next(response);
              break;
            case RestException.RESPONSE_USER_NOT_FOUND:
              debugPrint('[ResponseInterceptor] USER_NOT_FOUND case - throwing exception');
              throw RestException(responseData.msg ?? 'User not found', responseData.errCode ?? '00');
            case RestException.RESPONSE_ERROR:
              debugPrint('[ResponseInterceptor] ERROR case');
              if (responseData.msg == 'no data' || responseData.msg == 'No data') {
                response.data = responseData.data ?? [];
                handler.next(response);
              } else if (responseData.msg == _sessionExpiredMessage) {
                debugPrint('[ResponseInterceptor] Session expired - throwing SessionExpiredException');
                throw SessionExpiredException(_sessionExpiredMessage);
              } else {
                throw RestException(responseData.msg ?? 'Error', responseData.errCode ?? '02');
              }
              break;
            case RestException.RESPONSE_MAINTENANCE:
              throw RestException(responseData.msg ?? 'Maintenance', responseData.errCode ?? '99');
            case RestException.RESPONSE_UPDATE_APP:
              throw RestException(responseData.msg ?? 'Update required', responseData.errCode ?? '98');
            default:
              debugPrint('[ResponseInterceptor] Unknown errCode in String branch: ${responseData.errCode} - passing through');
              handler.next(response);
          }
        } else {
          debugPrint('[ResponseInterceptor] String decoded to non-Map - passing through');
          response.data = data;
          handler.next(response);
        }
      } else {
        debugPrint('[ResponseInterceptor] Unknown data type - passing through');
        handler.next(response);
      }
    } catch (e) {
      debugPrint('[ResponseInterceptor] CAUGHT EXCEPTION: $e (type: ${e.runtimeType})');
      if (e is SessionExpiredException) {
        debugPrint('[ResponseInterceptor] SessionExpiredException - rejecting with DioException');
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: e,
          ),
        );
      } else if (e is RestException) {
        debugPrint('[ResponseInterceptor] RestException - rejecting with DioException');
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: e,
          ),
        );
      } else {
        debugPrint('[ResponseInterceptor] Non-RestException - rethrowing: $e');
        rethrow;
      }
    }
  }
}
