import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/models/score/score.dart';
import 'package:rabbaanii_portal/presentation/score/score_controller.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../di/providers.dart';
import '../../routing/app_router.dart';

class StudentScoreScreen extends HookConsumerWidget {
  final String? subjectId;
  final String? classId;
  final String? teacherName;

  const StudentScoreScreen({
    super.key,
    this.subjectId,
    this.classId,
    this.teacherName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    ref.listen(
      fetchStudentScoreProvider(
        key: key,
        classId: '$classId',
        subjectId: '$subjectId',
      ),
      (previous, next) {
        next.showToastOnError(context);
      },
    );
    final fetchAllScore = ref.watch(
      fetchStudentScoreProvider(
        key: key,
        classId: '$classId',
        subjectId: '$subjectId',
      ),
    );
    final itemCount =
        fetchAllScore.isLoading ? 10 : fetchAllScore.valueOrNull?.length ?? 0;

    final score = fetchAllScore.valueOrNull?.firstOrNull;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kelas: ${score?.kelas}',
              style: context.bodyMediumBold,
            ),
            Text(
              '${score?.mapel}',
              style: context.bodyMedium,
            ),
            Text(
              'Pengajar: $teacherName',
              style: context.bodySmall,
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchStudentScoreProvider(
            key: key,
            classId: '$classId',
            subjectId: '$subjectId',
          ).future,
        ),
        child: Skeletonizer(
          enabled: fetchAllScore.isLoading,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: itemCount,
            itemBuilder: (ctx, index) {
              final item =
                  fetchAllScore.valueOrNull?.elementAtOrNull(index);

              return _buildItem(context, ref, item, key);
            },
          ),
        ),
      ),
    );
  }

  _buildItem(
    BuildContext context,
    WidgetRef ref,
    Nilai? item,
    String key,
  ) {
    return InkWell(
      onTap: () {
        context.goNamed(
          AppRoute.scoreDetail.name,
          extra: item,
          queryParameters: {
            'subjectId': subjectId,
            'classId': classId,
            'teacherName': teacherName,
          },
        );
      },
      child: Card.outlined(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    final imageProvider = CachedNetworkImageProvider(
                      '${item?.img}',
                    );
                    showImageViewer(context, imageProvider);
                  },
                  child: CustomAvatar(
                    imageUrl: '${item?.img}',
                    name: '${item?.namaLengkap}',
                    size: 56,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      '${item?.namaLengkap}',
                      style: context.bodyMediumBold,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 2),
                        Text(
                          'NIS: ${item?.nis}',
                          style: context.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
            const SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                color: context.colorPrimary,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Nilai PR',
                        style: context.bodySmall?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                      Text(
                        '${item?.rpr}',
                        style: context.bodyMediumBold?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Nilai Tugas',
                        style: context.bodySmall?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                      Text(
                        '${item?.rt}',
                        style: context.bodyMediumBold?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Nilai Harian',
                        style: context.bodySmall?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                      Text(
                        '${item?.rph}',
                        style: context.bodyMediumBold?.copyWith(
                          color: context.colorOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
