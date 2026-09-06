import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_infinite_scroll_pagination/riverpod_infinite_scroll_pagination.dart';

import '../../models/health/health.dart';
import '../../models/service_injection.dart';

part 'paging_student_health_controller.g.dart';

@riverpod
class PagingStudentHealthController extends _$PagingStudentHealthController
    with PaginatedDataMixinGeneric<Kesehatan>
    implements PaginatedNotifier<Kesehatan> {
  @override
  FutureOr<List<Kesehatan>> build({required String key}) async {
    state = const AsyncValue.loading();
    return await init(
      dataFetcher: PaginatedDataRepository(
        fetcher: ({required page, query}) async {
          final results = await ref.read(healthServiceProvider).get(key, page);
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
