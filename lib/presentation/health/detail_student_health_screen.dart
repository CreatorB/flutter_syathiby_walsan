import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/presentation/health/student_health_controller.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/providers.dart';

class DetailStudentHealthScreen extends HookConsumerWidget {
  final String studentHealthId;

  const DetailStudentHealthScreen({
    super.key,
    required this.studentHealthId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final fetchDetailStudentHealth = ref.watch(fetchStudentHealthDetailProvider(
      key: key,
      id: studentHealthId,
    ));
    final studentHealth = fetchDetailStudentHealth.valueOrNull?.firstOrNull;
    final dateFormat = ref.watch(formatDateProvider(
      '${studentHealth?.date}',
      format: 'EEEE, dd MMMM yyyy',
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Penanganan'),
      ),
      body: fetchDetailStudentHealth.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48.0),
                const SizedBox(height: 12.0),
                Text(
                  'Gagal memuat detail penanganan',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Text(
                  '$error',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: () => ref.invalidate(
                    fetchStudentHealthDetailProvider(
                      key: key,
                      id: studentHealthId,
                    ),
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Coba lagi'),
                ),
              ],
            ),
          ),
        ),
        data: (data) {
          if (studentHealth == null) {
            return RefreshIndicator(
              onRefresh: () => ref.refresh(
                fetchStudentHealthDetailProvider(
                  key: key,
                  id: studentHealthId,
                ).future,
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        const Icon(Icons.info_outline, size: 48.0),
                        const SizedBox(height: 12.0),
                        Text(
                          'Data penanganan tidak ditemukan',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Kemungkinan catatan kesehatan ini bukan untuk anak Anda, atau sudah dihapus.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return Skeletonizer(
            enabled: false,
            child: RefreshIndicator(
              onRefresh: () => ref.refresh(
                fetchStudentHealthDetailProvider(
                  key: key,
                  id: studentHealthId,
                ).future,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          '${studentHealth.nama_siswa}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      _buildDetailItem(
                        'Kelas',
                        '${studentHealth.kelas}',
                      ),
                      _buildDetailItem('Diagnosa', '${studentHealth.diagnosa}'),
                      _buildDetailItem(
                        'Tanggal Pemeriksaan',
                        '$dateFormat',
                      ),
                      _buildDetailItem(
                        'Jam Pemeriksaan',
                        '${studentHealth.hour}',
                      ),
                      _buildDetailItem(
                          'Keluhan Siswa', '${studentHealth.keluhan}'),
                      _buildDetailItem(
                        'Detail Penanganan',
                        '${studentHealth.penanganan}',
                      ),
_buildDetailItem(
                        'Waktu Istirahat',
                        '${studentHealth.istirahatRange ?? '-'}',
                      ),
                      _buildDetailItem(
                        'Perlu Dijemput Orang Tua',
                        '${studentHealth.dijemput}',
                      ),
                      _buildDetailItem('Informasi Untuk Orang Tua',
                          '${studentHealth.info_ortu}'),
                      _buildDetailItem(
                        'Yang Menangani',
                        '${studentHealth.staff}',
                      ),
                      const SizedBox(height: 4.0),
                      Builder(builder: (context) {
                        final img = studentHealth.img;
                        final hasImg = img != null && img.isNotEmpty && img != 'null';
                        if (!hasImg) {
                          return Container(
                            width: double.infinity,
                            height: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text('Tidak ada foto'),
                          );
                        }
                        return CachedNetworkImage(
                          imageUrl: img,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              const Text('Tidak ada foto'),
                        );
                      }),
                      // Provide your image path here
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDetailItem(
    String label,
    String value, {
    VoidCallback? onClick,
  }) {
    return InkWell(
      onTap: onClick,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

}
