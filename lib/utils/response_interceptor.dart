import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/models/response_entity.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      // 1. Skip gettokenwali endpoint agar tidak diproses
      if (response.requestOptions.path.contains('gettokenwali')) {
        handler.next(response);
        return;
      }

      // 2. Jika response data masih String, bersihkan HTML warning/notices
      var data = response.data;
      if (data is String) {
        data = data.replaceAll(RegExp(r'<[^>]*>'), '').trim();
        // Jika string masih mulai dengan { atau [, decode JSON
        if (data.startsWith('{') || data.startsWith('[')) {
          // Tidak perlu decode lagi, langsung proses
        } else {
          // Jika tidak, tetap pass
        }
      }

      // 3. Jika response data sudah Map, langsung pakai
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
            throw RestException(responseData.msg, responseData.errCode);
          case RestException.RESPONSE_MAINTENANCE:
            throw RestException(responseData.msg, responseData.errCode);
          case RestException.RESPONSE_UPDATE_APP:
            throw RestException(responseData.msg, responseData.errCode);
        }
      }
      // 4. Jika response data adalah List, pass through
      else if (data is List) {
        response.data = data;
        handler.next(response);
      }
      // 5. Jika response data masih String, decode JSON
      else if (data is String) {
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
              throw RestException(responseData.msg, responseData.errCode);
            case RestException.RESPONSE_MAINTENANCE:
              throw RestException(responseData.msg, responseData.errCode);
            case RestException.RESPONSE_UPDATE_APP:
              throw RestException(responseData.msg, responseData.errCode);
          }
        } else {
          // Jika string bukan JSON, pass raw
          response.data = data;
          handler.next(response);
        }
      }
      else {
        // Jika tipe data tidak terduga, pass langsung
        handler.next(response);
      }
    } catch (e) {
      // Jika error, log dan pass response
      // (hindari print di production, gunakan logger jika perlu)
      handler.next(response);
    }
  }
}
