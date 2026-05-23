import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rabbaanii_portal/models/health/health.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/presentation/health/student_health_controller.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../di/providers.dart';
import '../../../routing/app_router.dart';

class StudentHealthScreen extends HookConsumerWidget {
  const StudentHealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final fetchHealthRecap = ref.watch(
      fetchStudentHealthRecapProvider(key: key),
    );

    final pagingController = useMemoized(
      () => PagingController<int, Kesehatan>(firstPageKey: 1),
    );

    useEffect(() {
      void fetchPage(int pageKey) async {
        try {
          final newItems = await ref.read(healthServiceProvider).get(
                key,
                pageKey,
              );
          if (newItems.isEmpty) {
            pagingController.appendLastPage(newItems);
          } else {
            pagingController.appendPage(newItems, pageKey + 1);
          }
        } catch (error) {
          pagingController.error = error;
        }
      }

      pagingController.addPageRequestListener(fetchPage);
      return () => pagingController.removePageRequestListener(fetchPage);
    }, [pagingController]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kesehatan'),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.sync(pagingController.refresh);
        },
        child: ListView(
          children: [
            Card.outlined(
              margin: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jumlah Perawatan', style: context.titleMedium),
                        Skeletonizer(
                          enabled: fetchHealthRecap.isLoading,
                          child: Text(
                            '${fetchHealthRecap.valueOrNull?.firstOrNull?.totalSick ?? '0'} Kali',
                            style: context.titleMediumBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PagedListView<int, Kesehatan>(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, index) {
                  return _studentHealthItem(context, ref, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _studentHealthItem(
    BuildContext context,
    WidgetRef ref,
    Kesehatan studentHealth,
  ) {
    final dateFormat = ref.watch(formatDateProvider(
      '${studentHealth.date}',
      format: 'EEE, dd MMMM yyyy',
    ));
    return ListTile(
      title: Text(
        '${studentHealth.nama_siswa}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.bodyLargeBold,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${studentHealth.diagnosa}',
            style: context.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '$dateFormat - ${studentHealth.hour}',
            style: context.bodySmall?.copyWith(
              color: context.colorOnSurface.withOpacity(
                0.6,
              ),
            ),
          ),
        ],
      ),
      leading: CustomAvatar(
        name: '${studentHealth.nama_siswa}',
        imageUrl: '${studentHealth.img}',
        size: 40,
      ),
      onTap: () {
        context.goNamed(
          AppRoute.detailStudentHealth.name,
          extra: '${studentHealth.id_kesehatan}',
        );
      },
    );
  }
}
