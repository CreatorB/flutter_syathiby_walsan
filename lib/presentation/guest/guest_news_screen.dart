import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:rabbaanii_portal/presentation/wordpress/wp_posts_controller.dart';
import 'package:rabbaanii_portal/presentation/wordpress/wp_post_list_item.dart';

class GuestNewsScreen extends HookConsumerWidget {
  const GuestNewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchPosts = ref.watch(fetchWpPostsProvider(page: 1, perPage: 20));
    final currentPath = GoRouterState.of(context).matchedLocation;
    final isGuestMode = currentPath.contains('/guest-');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita'),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(fetchWpPostsProvider(page: 1, perPage: 20)),
        child: Skeletonizer(
          enabled: fetchPosts.isLoading,
          child: fetchPosts.hasError
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Gagal memuat berita',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${fetchPosts.error}',
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () =>
                            ref.refresh(fetchWpPostsProvider(page: 1, perPage: 20)),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: fetchPosts.valueOrNull?.length ?? 10,
                  itemBuilder: (context, index) {
                    final post = fetchPosts.valueOrNull?.elementAtOrNull(index);
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: WpPostListItem(post: post),
                      onTap: post != null
                          ? () {
                              if (isGuestMode) {
                                context.goNamed(
                                  AppRoute.guestDetailNews.name,
                                  extra: post,
                                );
                              } else {
                                context.goNamed(
                                  AppRoute.detailNews.name,
                                  extra: post,
                                );
                              }
                            }
                          : null,
                    );
                  },
                ),
        ),
      ),
    );
  }
}