import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/utils/pagination_controller.dart';

mixin AsyncPaginationController<T, I> on AsyncNotifier<List<T>> implements PaginationController<T, I> {
  @override
  late I currentPage = initialPage;

  @override
  FutureOr<List<T>> build() async => loadPage(initialPage);

  @override
  Future<void> loadNextPage() async {
    state = AsyncLoading<List<T>>();

    final newState = await AsyncValue.guard<List<T>>(() async {
      currentPage = nextPage(currentPage);
      final elements = await loadPage(currentPage);
      return [...?state.valueOrNull, ...elements];
    });
    state = newState;
  }
}