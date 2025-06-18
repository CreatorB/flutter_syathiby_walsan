import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/utils/response_interceptor.dart';

class ApiService {
  // URL endpoint
  final String baseUrl = 'https://api.rabbaanii.sch.id/';

  // Dio instance
  final Dio _dio = Dio()
  ..interceptors.add(ResponseInterceptor());

  // Fungsi fetch data
  Future<Map<String, dynamic>> fetchStudentData(String studentId) async {
    try {
      // Mengirimkan request GET dengan parameter studentId
      final response = await _dio.get(baseUrl, queryParameters: {
        'studentId': studentId,
      });

      // Cek jika status code berhasil (200 OK)
      if (response.statusCode == 200) {
        // Mengembalikan data JSON sebagai Map<String, dynamic>
        return response.data as Map<String, dynamic>;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('Error fetching data: ${e.message}');
      throw Exception('Error fetching data');
    }
  }
}