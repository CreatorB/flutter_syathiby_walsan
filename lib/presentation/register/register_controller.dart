import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/student/siswa.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> registerParent({
    required String studentId,
    required String parentName,
    required String phoneNumber,
    required String email,
    required String address,
    required String password,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(userServiceProvider).registerParent(
            studentId,
            parentName,
            email,
            phoneNumber,
            address,
            password,
          ),
    );
    state = result;
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Siswa>> fetchStudentParent(
    FetchStudentParentRef ref, {
      required String query
    }) async {
  final result =
  await ref.watch(studentServiceProvider).searchStudentParent(query);
  return result;
}
