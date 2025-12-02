import 'package:dio/dio.dart';
import 'dart:developer' as dev;

class DebugDioInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    dev.log('❌ Dio Error Occurred', name: 'Dio Debug');

    dev.log('Type: ${err.type}', name: 'Dio Debug');
    dev.log('Message: ${err.message}', name: 'Dio Debug');
    dev.log('Error: ${err.error}', name: 'Dio Debug');

    if (err.response != null) {
      dev.log('Response Status: ${err.response?.statusCode}', name: 'Dio Debug');
      dev.log('Response Headers: ${err.response?.headers.map}', name: 'Dio Debug');
      dev.log('Response Data (raw): ${err.response?.data}', name: 'Dio Debug');

      // Coba cetak sebagai string, bahkan jika null
      final rawData = err.response?.data?.toString() ?? 'NULL';
      if (rawData.isNotEmpty) {
        // Deteksi apakah ada karakter aneh di awal (BOM, HTML, dll)
        final first10 = rawData.substring(0, rawData.length > 10 ? 10 : rawData.length);
        dev.log('First 10 chars of response: "$first10"', name: 'Dio Debug');
      }
    } else {
      dev.log('No response object – likely connection failed', name: 'Dio Debug');
    }

    // Lanjutkan error ke handler
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    dev.log('📤 Requesting: ${options.method} ${options.uri}', name: 'Dio Debug');
    dev.log('Query: ${options.queryParameters}', name: 'Dio Debug');
    dev.log('Headers: ${options.headers}', name: 'Dio Debug');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    dev.log('✅ Response: ${response.statusCode} from ${response.requestOptions.uri}', name: 'Dio Debug');
    handler.next(response);
  }
}