import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_infinite_scroll_pagination/riverpod_infinite_scroll_pagination.dart';

part 'paging_permit_controller.g.dart';

@riverpod
class PagingPermitController extends _$PagingPermitController
    with PaginatedDataMixinGeneric<Permit>
    implements PaginatedNotifier<Permit> {

  @override
  FutureOr<List<Permit>> build({required String key}) async {
    state = const AsyncValue.loading();
    return await init(
      dataFetcher: PaginatedDataRepository(
        fetcher: ({required page, query}) async {
          final results = await ref.watch(permitServiceProvider).getSantri(key, page);
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
