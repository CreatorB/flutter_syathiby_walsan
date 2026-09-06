import 'package:rabbaanii_portal/models/pickup/pickup.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/message.dart';

part 'pickup_controller.g.dart';

@riverpod
class PickupController extends _$PickupController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> registrationPickup({
    required String key,
    required String eventId,
    required String parentName,
    required String relation,
    List<int>? image,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(pickupServiceProvider).addPenjemput(
            key,
            eventId,
            parentName,
            relation,
            file: image,
          ),
    );
    state = result;
    return result.valueOrNull;
  }

  Future<Message?> editRegistrationPickup({
    required String key,
    required String eventId,
    required String parentName,
    required String relation,
    List<int>? image,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(pickupServiceProvider).editPenjemput(
            key,
            eventId,
            parentName,
            relation,
            file: image,
          ),
    );
    state = result;
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Penjemputan>> fetchAllPickupParent(
  FetchAllPickupParentRef ref, {
  required String key,
  required String id,
}) async {
  final result = await ref.watch(pickupServiceProvider).getsPenjemput(
        key,
        id,
      );
  return result;
}

@riverpod
Future<List<Penjemputan>> fetchQrPickup(
    FetchQrPickupRef ref, {
      required String key,
      required String id,
    }) async {
  final result = await ref.watch(pickupServiceProvider).getPenjemputan(
    key,
    id,
  );
  return result;
}
