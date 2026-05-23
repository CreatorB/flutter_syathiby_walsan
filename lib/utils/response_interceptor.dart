import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/models/response_entity.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      if (response.requestOptions.path.contains('gettokenwali')) {
        handler.next(response);
        return;
      }

      var data = response.data;
      if (data is String) {
        data = data.replaceAll(RegExp(r'<[^>]*>'), '').trim();
      }

      if (data is Map) {
        final mapData = Map<String, dynamic>.from(data);
        final responseData = ResponseEntity.fromJson(mapData);
        switch (responseData.errCode) {
          case RestException.RESPONSE_SUCCESS:
            response.data = responseData.data ?? mapData;
            handler.next(response);
            break;
          case RestException.RESPONSE_USER_NOT_FOUND:
            throw RestException(responseData.msg, responseData.errCode);
          case RestException.RESPONSE_ERROR:
            if (responseData.msg == 'no data' || responseData.msg == 'No data') {
              response.data = responseData.data ?? [];
              handler.next(response);
            } else {
              throw RestException(responseData.msg, responseData.errCode);
            }
            break;
          case RestException.RESPONSE_MAINTENANCE:
            throw RestException(responseData.msg, responseData.errCode);
          case RestException.RESPONSE_UPDATE_APP:
            throw RestException(responseData.msg, responseData.errCode);
        }
      } else if (data is List) {
        response.data = data;
        handler.next(response);
      } else if (data is String) {
        final jsonData = jsonDecode(data);
        if (jsonData is Map) {
          final mapData = Map<String, dynamic>.from(jsonData);
          final responseData = ResponseEntity.fromJson(mapData);
          switch (responseData.errCode) {
            case RestException.RESPONSE_SUCCESS:
              response.data = responseData.data ?? mapData;
              handler.next(response);
              break;
            case RestException.RESPONSE_USER_NOT_FOUND:
              throw RestException(responseData.msg, responseData.errCode);
            case RestException.RESPONSE_ERROR:
              if (responseData.msg == 'no data' || responseData.msg == 'No data') {
                response.data = responseData.data ?? [];
                handler.next(response);
              } else {
                throw RestException(responseData.msg, responseData.errCode);
              }
              break;
            case RestException.RESPONSE_MAINTENANCE:
              throw RestException(responseData.msg, responseData.errCode);
            case RestException.RESPONSE_UPDATE_APP:
              throw RestException(responseData.msg, responseData.errCode);
          }
        } else {
          response.data = data;
          handler.next(response);
        }
      } else {
        handler.next(response);
      }
    } catch (e) {
      if (e is RestException) {
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: e,
          ),
        );
      } else {
        handler.next(response);
      }
    }
  }
}