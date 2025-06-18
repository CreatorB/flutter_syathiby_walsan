import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:intl/intl.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/presentation/activity/activity_controller.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timelines_plus/timelines_plus.dart';

class SchoolActivityScreen extends HookConsumerWidget {
  const SchoolActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final controller = EasyInfiniteDateTimelineController();
    final dateNow = DateTime.now();
    final firstDate = DateTime(2023);
    final dateSelected = useState<DateTime>(dateNow);
    final formattedDate = DateFormat('yyyy-MM-dd').format(dateSelected.value);
    final fetchSchoolSchedule = ref.watch(
      fetchSchoolSheduleProvider(key: key, date: formattedDate),
    );
    final currentSchedule = fetchSchoolSchedule.valueOrNull?.firstOrNull;
    final itemCount = fetchSchoolSchedule.isLoading
        ? 10
        : fetchSchoolSchedule.valueOrNull?.length ?? 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Skeletonizer(
          enabled: fetchSchoolSchedule.isLoading,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kegiatan Kelas ${currentSchedule?.nama_kelas ?? ''}',
                style: context.titleMediumBold,
              ),
              Text(
                currentSchedule?.namaSiswa ?? 'Tidak ada',
                style: context.bodyMedium,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final selected = await showDatePicker(
                context: context,
                firstDate: firstDate,
                initialDate: dateSelected.value,
                lastDate: dateNow,
              );
              if (selected == null) return;
              dateSelected.value = selected;
            },
            icon: const Icon(Icons.today),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: EasyInfiniteDateTimeLine(
              controller: controller,
              locale: 'id',
              firstDate: firstDate,
              focusDate: dateSelected.value,
              lastDate: dateNow,
              selectionMode: const SelectionMode.autoCenter(),
              onDateChange: (selectedDate) {
                dateSelected.value = selectedDate;
                controller.animateToFocusDate();
              },
              showTimelineHeader: false,
              dayProps: EasyDayProps(
                todayStyle: DayStyle(
                  dayNumStyle: context.titleLargeBold?.copyWith(
                    color: context.colorOnSurface,
                  ),
                ),
                inactiveDayStyle: DayStyle(
                  dayNumStyle: context.titleLargeBold?.copyWith(
                    color: context.colorOnSurface,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(
            fetchSchoolSheduleProvider(key: key, date: formattedDate).future,
          );
        },
        child: Skeletonizer(
          enabled: fetchSchoolSchedule.isLoading,
          child: Timeline.tileBuilder(
            theme: TimelineThemeData(
              nodePosition: 0,
              connectorTheme: ConnectorThemeData(
                thickness: 3.0,
                color: context.colorOutline.withOpacity(0.38),
              ),
              indicatorTheme: const IndicatorThemeData(
                size: 24.0,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            builder: TimelineTileBuilder.connected(
              itemCount: itemCount,
              contentsBuilder: (_, index) {
                final schedule =
                    fetchSchoolSchedule.valueOrNull?.elementAtOrNull(
                  index,
                );
                return Container(
                  padding: const EdgeInsets.only(left: 8),
                  width: double.infinity,
                  child: Card.outlined(
                    child: InkWell(
                      onTap: () {
                        showOkAlertDialog(
                          context: context,
                          title: '${schedule?.mata_pelajaran}',
                          message: schedule?.bab?.isNotEmpty == true
                              ? 'Pengajar: ${schedule?.staff}\n'
                              'Bab: ${schedule?.bab}\n'
                              'Materi: ${schedule?.detail}'
                              : 'Pengajar: ${schedule?.staff}',
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                          bottom: 12,
                          top: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${schedule?.jam}',
                                      style: context.bodyMedium,
                                    ),
                                  ],
                                ),
                                Text(
                                  '${schedule?.statusAbsen}',
                                  style: context.labelMedium?.copyWith(
                                    color: schedule?.statusAbsen == 'hadir'
                                        ? context.colorPrimary
                                        : schedule?.statusAbsen == 'Belum Absen'
                                            ? context.colorOnSurface
                                            : context.colorError,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '${schedule?.mata_pelajaran}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.titleMediumBold,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Pengajar: ${schedule?.staff}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.labelLarge,
                            ),
                            const SizedBox(height: 2),
                            Visibility(
                              visible: schedule?.bab?.isNotEmpty == true ||
                                  schedule?.detail?.isNotEmpty == true,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bab: ${schedule?.bab ?? '-'}',
                                    style: context.labelMedium
                                        ?.copyWith(color: context.colorOutline),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Materi: ${schedule?.detail ?? '-'}',
                                    style: context.labelMedium
                                        ?.copyWith(color: context.colorOutline),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              connectorBuilder: (_, index, __) {
                final schedule =
                    fetchSchoolSchedule.valueOrNull?.elementAtOrNull(index);

                if (schedule?.statusAbsen == 'hadir') {
                  return const SolidLineConnector(color: Color(0xff6ad192));
                }
                if (schedule?.statusAbsen == 'Belum Absen') {
                  return const SolidLineConnector();
                }
                return SolidLineConnector(color: context.colorError);
              },
              indicatorBuilder: (_, index) {
                final schedule =
                    fetchSchoolSchedule.valueOrNull?.elementAtOrNull(index);

                if (schedule?.statusAbsen == 'hadir') {
                  return DotIndicator(
                    color: const Color(0xff6ad192),
                    child: Icon(
                      Icons.check,
                      color: context.colorOnError,
                      size: 14.0,
                    ),
                  );
                }
                if (schedule?.statusAbsen == 'Belum Absen') {
                  return DotIndicator(
                    color: const Color(0xffbabdc0),
                    child: Icon(
                      Icons.circle,
                      size: 14.0,
                      color: context.colorOnError,
                    ),
                  );
                }
                return DotIndicator(
                  color: context.colorError,
                  child: Icon(
                    Icons.close,
                    size: 14.0,
                    color: context.colorOnError,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
