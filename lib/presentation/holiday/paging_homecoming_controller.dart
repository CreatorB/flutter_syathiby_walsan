import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/models/pickup/pickup.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_infinite_scroll_pagination/riverpod_infinite_scroll_pagination.dart';

part 'paging_homecoming_controller.g.dart';

@riverpod
class PagingHomecomingController extends _$PagingHomecomingController
    with PaginatedDataMixinGeneric<Penjemputan>
    implements PaginatedNotifier<Penjemputan> {
  @override
  FutureOr<List<Penjemputan>> build({
    required String key,
    required String id,
  }) async {
    state = const AsyncValue.loading();
    return await init(
      dataFetcher: PaginatedDataRepository(
        fetcher: ({required page, query}) async {
          final results = await ref.watch(pickupServiceProvider).gets(
                key,
                id,
                page,
              );
          return PaginatedResponse(data: results);
        },
      ),
    );
  }

  @override
  Future<void> getNextPage() async {
    state = const AsyncLoading();
    state = AsyncData(await fetchData());
  }

  @override
  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await reloadData());
  }
}
