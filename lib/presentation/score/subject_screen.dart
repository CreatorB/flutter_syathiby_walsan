import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/presentation/score/score_controller.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/providers.dart';
import '../../routing/app_router.dart';

class SubjectScreen extends HookConsumerWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    ref.listen(
      fetchAllSubjectProvider(key: key),
      (previous, next) {
        next.showToastOnError(context);
      },
    );
    final fetchAllSubject = ref.watch(fetchAllSubjectProvider(key: key));
    final itemCount = fetchAllSubject.isLoading
        ? 10
        : fetchAllSubject.valueOrNull?.length ?? 0;

    final className = fetchAllSubject.valueOrNull?.firstOrNull?.nama_kelas;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Mata Pelajaran'.hardcoded),
            Visibility(
              visible: className != null,
              child: Text(
                'Kelas: $className',
                style: context.bodyMedium,
              ),
            )
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchAllSubjectProvider(key: key).future,
        ),
        child: Skeletonizer(
          enabled: fetchAllSubject.isLoading,
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final item = fetchAllSubject.valueOrNull?.elementAtOrNull(index);

              return Card.outlined(
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0.0,
                    horizontal: 4,
                  ),
                  child: ListTile(
                    title: Text(
                      '${item?.mata_pelajaran}',
                      style: context.titleMediumBold,
                    ),
                    subtitle: Text('Pengajar: ${item?.staff}'),
                    trailing: Transform.translate(
                      offset: const Offset(12, 0),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ),
                    onTap: () {
                      if (item == null) return;
                      context.goNamed(
                        AppRoute.studentScore.name,
                        queryParameters: {
                          'classId': item.id_kelas,
                          'subjectId': item.id_mapel,
                          'teacherName': item.staff,
                        },
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
