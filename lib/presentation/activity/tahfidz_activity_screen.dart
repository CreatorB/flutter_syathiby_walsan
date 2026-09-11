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

class TahfidzActivityScreen extends HookConsumerWidget {
  const TahfidzActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final controller = EasyInfiniteDateTimelineController();
    final dateNow = DateTime.now();
    final firstDate = DateTime(2023);
    final dateSelected = useState<DateTime>(dateNow);
    final formattedDate = DateFormat('yyyy-MM-dd').format(dateSelected.value);
    final fetchTahfidzHistory = ref.watch(
      fetchTahfidzHistoryProvider(key: key, date: formattedDate),
    );
    final currentTahfidz = fetchTahfidzHistory.valueOrNull?.firstOrNull;
    final itemCount = fetchTahfidzHistory.isLoading
        ? 10
        : fetchTahfidzHistory.valueOrNull?.length ?? 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Skeletonizer(
          enabled: fetchTahfidzHistory.isLoading,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kegiatan Tahsin Tahfidz',
                style: context.titleMediumBold,
              ),
              Text(
                // Dulu di sini tertulis `?? 'Tidak ada'`, sehingga pada tanggal
                // yang tidak ada kegiatannya layar menampilkan "Tidak ada" DI
                // TEMPAT NAMA SANTRI -- terbaca seperti aplikasinya rusak,
                // padahal yang kosong hanya tanggal yang sedang dipilih.
                // Sekarang jatuh ke tanggalnya, yang selalu benar.
                currentTahfidz?.nama_siswa ??
                    DateFormat('EEEE, d MMMM y').format(dateSelected.value),
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
            fetchTahfidzHistoryProvider(key: key, date: formattedDate).future,
          );
        },
        child: Skeletonizer(
          enabled: fetchTahfidzHistory.isLoading,
          // Kalau tanggal yang dipilih tidak punya kegiatan, Timeline dengan
          // itemCount 0 menghasilkan layar PUTIH TOTAL -- tanpa satu pun
          // keterangan. Wali tidak tahu apakah aplikasinya rusak, datanya
          // belum diisi, atau memang tidak ada kegiatan hari itu.
          child: (!fetchTahfidzHistory.isLoading && itemCount == 0)
              ? ListView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 48),
                  children: [
                    Icon(Icons.event_busy_outlined,
                        size: 56, color: Theme.of(context).disabledColor),
                    const SizedBox(height: 16),
                    Text('Tidak ada kegiatan tahfidz pada tanggal ini',
                        textAlign: TextAlign.center,
                        style: context.titleMediumBold),
                    const SizedBox(height: 8),
                    Text(
                      'Pilih tanggal lain di bagian atas, atau ketuk ikon',
                      textAlign: TextAlign.center,
                      style: context.bodyMedium,
                    ),
                    Text(
                      'kalender untuk melompat ke tanggal tertentu.',
                      textAlign: TextAlign.center,
                      style: context.bodyMedium,
                    ),
                  ],
                )
              : Timeline.tileBuilder(
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
                final tahfidz =
                    fetchTahfidzHistory.valueOrNull?.elementAtOrNull(
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
                            title: '${tahfidz?.nama_siswa} - ${tahfidz?.hour}',
                            message: 'Pengampu: ${tahfidz?.staff}\n'
                                'Jenis: ${tahfidz?.jenis_tahfidz}\n'
                                'Ayat/Halaman: ${tahfidz?.halaman ?? "-"} s/d ${tahfidz?.halaman_end ?? "-"}\n'
                                'Jenis Penilaian: ${tahfidz?.jenis_penilaian ?? "-"}\n'
                                'Nilai: ${tahfidz?.nilai ?? "-"}\n'
                                'Catatan: ${tahfidz?.detail}\n');
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
                                      '${tahfidz?.hour}',
                                      style: context.bodyMedium,
                                    ),
                                  ],
                                ),
                                Text(
                                  '${tahfidz?.jenis_penilaian ?? "-"}',
                                  style: context.labelMedium?.copyWith(
                                    color: tahfidz?.jenis_penilaian == 'Mumtaz' ? context.colorPrimary : context.colorOnSurface,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '${tahfidz?.jenis_tahfidz} (${tahfidz?.status})',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.titleMediumBold,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '${tahfidz?.halaman} s/d ${tahfidz?.halaman_end}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: context.labelLarge,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Pengajar: ${tahfidz?.staff}',
                              style: context.labelMedium
                                  ?.copyWith(color: context.colorOutline),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Catatan: ${tahfidz?.detail ?? '-'}',
                              style: context.labelMedium
                                  ?.copyWith(color: context.colorOutline),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              connectorBuilder: (_, index, __) {
                final tahfidz =
                    fetchTahfidzHistory.valueOrNull?.elementAtOrNull(index);
                final isMumtaz = tahfidz?.jenis_penilaian == 'Mumtaz';
                if (isMumtaz) {
                  return const SolidLineConnector(color: Color(0xff6ad192));
                }
                return const SolidLineConnector();
              },
              indicatorBuilder: (_, index) {
                final tahfidz =
                    fetchTahfidzHistory.valueOrNull?.elementAtOrNull(index);
                final isMumtaz = tahfidz?.jenis_penilaian == 'Mumtaz';

                if (isMumtaz) {
                  return DotIndicator(
                    color: const Color(0xff6ad192),
                    child: Icon(
                      Icons.circle,
                      color: context.colorOnError,
                      size: 14.0,
                    ),
                  );
                }
                return DotIndicator(
                  color: const Color(0xffbabdc0),
                  child: Icon(
                    Icons.circle,
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
