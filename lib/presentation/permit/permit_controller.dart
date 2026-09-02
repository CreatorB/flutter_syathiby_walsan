import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permit_controller.g.dart';

@riverpod
class PermitController extends _$PermitController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Message _errorToMessage(Object? error) {
    debugPrint("DEBUG _errorToMessage: error type = ${error.runtimeType}");
    debugPrint("DEBUG _errorToMessage: error = $error");

    // Helper to extract RestException from potentially nested DioExceptions
    RestException? extractRestException(Object? err) {
      if (err is RestException) return err;
      if (err is DioException) {
        return extractRestException(err.error);
      }
      return null;
    }

    final restEx = extractRestException(error);
    if (restEx != null) {
      debugPrint("DEBUG: extracted RestException: ${restEx.message}");
      return Message(
        status: 'false',
        errCode: restEx.errorCode,
        msg: restEx.message,
      );
    }

    if (error is DioException) {
      debugPrint("DEBUG: caught DioException, type = ${error.type}");
      final responseData = error.response?.data;
      if (responseData is Map) {
        final errCode = responseData['errCode']?.toString();
        final msg = responseData['msg']?.toString();
        if (msg != null) {
          return Message(
            status: 'false',
            errCode: errCode ?? '02',
            msg: msg,
          );
        }
      }
      final msg = error.message?.isNotEmpty == true ? error.message : null;
      if (msg != null && msg != 'null') {
        return Message(
          status: 'false',
          errCode: '02',
          msg: msg,
        );
      }
    }
    return Message(
      status: 'false',
      errCode: '02',
      msg: 'Terjadi kesalahan, coba lagi nanti',
    );
  }

  Future<Message?> addPermit({
    required String key,
    required String typeId,
    required String permitName,
    required String date,
    required String day,
    required String nis,
    required String classId,
    required String detail,
    required String studentId,
    List<int>? image,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(permitServiceProvider).addSantri(
            key,
            typeId,
            permitName,
            date,
            day,
            nis,
            classId,
            detail,
            studentId,
            img: image,
          ),
    );
    state = result;
    if (result.hasError) {
      return _errorToMessage(result.error);
    }
    return result.valueOrNull;
  }

  Future<Message?> cancelPermit({
    required String key,
    required String id,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(permitServiceProvider).cancelPermitSantri(key, id),
    );
    state = result;
    if (result.hasError) {
      return _errorToMessage(result.error);
    }
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Siswa>> fetchGetStudentParent(
  FetchGetStudentParentRef ref, {
  required String key,
}) async {
  final result = await ref.watch(studentServiceProvider).getStudentParent(key);
  return result;
}

@riverpod
Future<List<Permit>> fetchPermitType(
  FetchPermitTypeRef ref, {
  required String key,
  required String type,
}) async {
  final result = await ref.watch(permitServiceProvider).type(key, type);
  return result;
}

@riverpod
Future<List<Permit>> fetchPermitDetail(
  FetchPermitDetailRef ref, {
  required String key,
  required String id,
}) async {
  final result = await ref.watch(permitServiceProvider).getPermitSantri(key, id);
  return result;
}
