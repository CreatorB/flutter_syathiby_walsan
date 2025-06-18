import 'package:rabbaanii_portal/models/news/news.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_controller.g.dart';

@riverpod
Future<List<News>> fetchNews(
  FetchNewsRef ref, {
  required String key,
}) async {
  return await ref.watch(newsServiceProvider).getStudentNews(key);
}
