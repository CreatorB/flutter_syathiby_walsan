import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/wordpress/wp_post.dart';

part 'wp_posts_controller.g.dart';

@riverpod
Future<List<WpPost>> fetchWpPosts(
  FetchWpPostsRef ref, {
  int page = 1,
  int perPage = 10,
}) async {
  try {
    final posts = await ref.watch(wpApiServiceProvider).getPosts(
          page: page,
          perPage: perPage,
          embed: true,
          orderBy: 'date',
          order: 'desc',
        );
    return posts;
  } catch (e) {
    throw Exception('Failed to fetch WordPress posts: $e');
  }
}

@riverpod
Future<WpPost> fetchWpPost(
  FetchWpPostRef ref, {
  required int postId,
}) async {
  try {
    final post = await ref.watch(wpApiServiceProvider).getPost(
          postId,
          embed: true,
        );
    return post;
  } catch (e) {
    throw Exception('Failed to fetch WordPress post: $e');
  }
}