import 'dart:async';

abstract class PaginationController<T, I> {
  I get initialPage;

  late I currentPage = initialPage;

  FutureOr<List<T>> loadPage(I page);

  Future<void> loadNextPage();

  I nextPage(I currentPage);
}
