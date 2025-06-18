import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:intl/intl.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/rekap/rekap.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/presentation/activity/activity_controller.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timelines_plus/timelines_plus.dart';

class StudentActivityScreen extends HookConsumerWidget {
  const StudentActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final controller = EasyInfiniteDateTimelineController();
    final dateNow = DateTime.now();
    final firstDate = DateTime(2023);
    final dateSelected = useState<DateTime>(dateNow);
    final formattedDate = DateFormat('yyyy-MM-dd').format(dateSelected.value);
    final fetchStudentRecap = ref.watch(
      fetchStudentRecapProvider(key: key, date: formattedDate),
    );
    final recap = fetchStudentRecap.valueOrNull?.firstOrNull;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Skeletonizer(
          enabled: fetchStudentRecap.isLoading,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kegiatan Santri',
                style: context.titleMediumBold,
              ),
              Text(
                recap?.namaLengkap ?? 'Tidak ada',
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
          ref.invalidate(fetchStudentActivityProvider);
          return ref.refresh(
            fetchStudentRecapProvider(key: key, date: formattedDate).future,
          );
        },
        child: Skeletonizer(
          enabled: fetchStudentRecap.isLoading,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              _buildCardSchoolActivity(context, recap),
              _buildCardTahfidzActivity(context, recap),
              _buildCardEatingActivity(context, recap),
              _buildCardHostelActivity(context, recap),
              _buildCardStudentActivity(context, ref, key, formattedDate),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardSchoolActivity(
    BuildContext context,
    Rekap? recap,
  ) {
    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Kegiatan Sekolah',
                style: context.titleMediumBold,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jumlah Mapel',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.jumlahMapel} mata pelajaran',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hadir',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.hadirPelajaran} kali',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Izin',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.izinPelajaran} kali',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sakit',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.sakitPelajaran} kali',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alfa',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.alfaPelajaran} kali',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardTahfidzActivity(
    BuildContext context,
    Rekap? recap,
  ) {
    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Kegiatan Tahfidz',
                style: context.titleMediumBold,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shubuh',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.tahfidzSubuh}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dhuha',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.tahfidzdhuha}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Siang',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.tahfidzSiang}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Malam',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.tahfidzMalam}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardEatingActivity(
    BuildContext context,
    Rekap? recap,
  ) {
    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Kegiatan Makan',
                style: context.titleMediumBold,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pagi',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.makanPagi}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Siang',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.makanSiang}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Malam',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.makanMalam}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardHostelActivity(
    BuildContext context,
    Rekap? recap,
  ) {
    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Kegiatan Asrama',
                style: context.titleMediumBold,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: context.bodyMedium,
                ),
                Text(
                  '${recap?.tidur}',
                  style: context.bodyMediumBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardStudentActivity(
    BuildContext context,
    WidgetRef ref,
    String key,
    String formattedDate,
  ) {
    final fetchStudentRecap = ref.watch(
      fetchStudentActivityProvider(
        key: key,
        date: formattedDate,
      ),
    );
    final itemCount = fetchStudentRecap.isLoading
        ? 10
        : fetchStudentRecap.valueOrNull?.length ?? 0;

    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Aktivitas Santri',
                style: context.titleMediumBold,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemCount,
              itemBuilder: (context, index) {
                final recap =
                    fetchStudentRecap.valueOrNull?.elementAtOrNull(index);
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${recap?.namaLengkap}',
                          style: context.bodyMedium,
                        ),
                        Text(
                          '${recap?.hadirPelajaran}',
                          style: context.bodyMediumBold,
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
