import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/store/store.dart';
import 'package:rabbaanii_portal/models/user/register_wali_token.dart';
import 'package:rabbaanii_portal/models/user/user.dart';
import 'package:rabbaanii_portal/presentation/home/api_service.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/json_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> addStudentAccount({
    required String key,
    required String nis,
    required String studentId,
    required String classId,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref
          .watch(permitServiceProvider)
          .addAkunSantri(key, nis, classId, studentId),
    );
    state = result;
    return result.valueOrNull;
  }
}

/// Fetch detail wali - VERSION FIXED
@riverpod
Future<List<Store>> fetchDetailStudent(
  FetchDetailStudentRef ref, {
  required String key,
}) async {
  final logger = ref.watch(loggerProvider);
  logger.i('🔍 fetchDetailStudent DIPANGGIL! key: $key');
  
  final dio = ref.watch(dioProvider);

  try {
    final response = await dio.get(
      'settings/detailwali.php',
      queryParameters: {'key': key},
      options: Options(
        responseType: ResponseType.plain,
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );

    final raw = response.data as String;
    final cleanJson = extractJsonSafely(raw, endpoint: 'detailwali.php');
    final json = jsonDecode(cleanJson) as Map<String, dynamic>;

    if (json['data'] is! List) {
      throw Exception(
          'Format data tidak sesuai: expected List, got ${json['data'].runtimeType}');
    }

    final List<dynamic> data = json['data'];
    return data.map((e) => Store.fromJson(e as Map<String, dynamic>)).toList();
  } on DioException catch (e) {
    logger.e('❌ Dio Error detailwali: ${e.message}');
    rethrow;
  } catch (e) {
    logger.e('❌ Parse Error detailwali: $e');
    rethrow;
  }
}

/// Fetch data siswa - VERSION FIXED
@riverpod
Future<List<Store>> fetchStudentData(
  FetchStudentDataRef ref, {
  required String key,
}) async {
  final logger = ref.watch(loggerProvider);
  logger.i('🔍 fetchStudentData DIPANGGIL! key: $key');
  
  final dio = ref.watch(dioProvider);

  try {
    final response = await dio.get(
      'settings/datasiswa.php',
      queryParameters: {'key': key},
      options: Options(
        responseType: ResponseType.plain,
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );

    final raw = response.data as String;
    final cleanJson = extractJsonSafely(raw, endpoint: 'datasiswa.php');
    final json = jsonDecode(cleanJson) as Map<String, dynamic>;

    if (json['data'] is! List) {
      throw Exception(
          'Format data tidak sesuai: expected List, got ${json['data'].runtimeType}');
    }

    final List<dynamic> data = json['data'];
    return data.map((e) => Store.fromJson(e as Map<String, dynamic>)).toList();
  } on DioException catch (e) {
    logger.e('❌ Dio Error datasiswa: ${e.message}');
    rethrow;
  } catch (e) {
    logger.e('❌ Parse Error datasiswa: $e');
    rethrow;
  }
}

@riverpod
Future<User> saveTokenToServer(
  SaveTokenToServerRef ref, {
  required String key,
  required String token,
}) async {
  final logger = ref.watch(loggerProvider);
  
  // ✅ TAMBAH: Debug log untuk lihat apa yang dikirim
  logger.i('🔍 saveTokenToServer dipanggil');
  logger.i('📤 key: $key');
  logger.i('📤 token: ${token.substring(0, 20)}...');
  
  if (key.isEmpty) {
    logger.w('⚠️ key kosong!');
    throw Exception('Key tidak boleh kosong');
  }
  
  if (token.isEmpty) {
    logger.w('⚠️ token kosong!');
    throw Exception('Token tidak boleh kosong');
  }

  logger.i('✅ Calling registerWaliToken');
  
  final result = await ref.watch(userServiceProvider).registerWaliToken(
        RegisterWaliToken(
          key: key,
          token: token,
        ),
      );
  
  logger.i('✅ saveTokenToServer berhasil');
  return result;
}



@riverpod
Future<Map<String, dynamic>?> fetchCheckPayment(
  FetchCheckPaymentRef ref, {
  String? studentId,
}) async {
  final logger = ref.watch(loggerProvider);
  
  // Validasi studentId
  if (studentId == null || studentId.isEmpty) {
    logger.w('⚠️ fetchCheckPayment: studentId adalah null/kosong');
    return null;
  }

  final dio = ref.watch(dioProvider);
  final pref = ref.watch(sharedPreferencesHelperProvider);

  try {
    logger.i('🔍 fetchCheckPayment dengan studentId: $studentId');
    final response = await dio.get(
      'https://api.rabbaanii.sch.id?studentId=$studentId',
      options: Options(
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );

    logger.i('✅ fetchCheckPayment berhasil: ${response.statusCode}');
    await pref.setObject(AppConstant.keyPaymentHistory, response.data);
    return response.data as Map<String, dynamic>;
  } on DioException catch (e) {
    logger.e('❌ Dio Error fetchCheckPayment: ${e.message}');
    return null; // Return null daripada throw untuk mencegah UI crash
  } catch (e) {
    logger.e('❌ Error fetchCheckPayment: $e');
    return null;
  }
}
