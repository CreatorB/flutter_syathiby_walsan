import 'package:rabbaanii_portal/models/news/news.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tv_controller.g.dart';

@riverpod
class TvController extends _$TvController {
  @override
  FutureOr<void> build() async {
    return;
  }
}

@riverpod
Future<List<News>> fetchTv(
  FetchTvRef ref, {
  required String key,
}) async {
  final result = ref.watch(newsServiceProvider).getAcaraTv(key);
  return result;
}
