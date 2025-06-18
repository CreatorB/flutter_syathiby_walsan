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
      body: Skeletonizer(
        enabled: fetchDetailStudentHealth.isLoading,
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
                      '${studentHealth?.nama_siswa}',
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
                    '${studentHealth?.kelas}',
                  ),
                  _buildDetailItem('Diagnosa', '${studentHealth?.diagnosa}'),
                  _buildDetailItem(
                    'Tanggal Pemeriksaan',
                    '$dateFormat',
                  ),
                  _buildDetailItem(
                    'Jam Pemeriksaan',
                    '${studentHealth?.hour}',
                  ),
                  _buildDetailItem(
                      'Keluhan Siswa', '${studentHealth?.keluhan}'),
                  _buildDetailItem(
                    'Detail Penanganan',
                    '${studentHealth?.penanganan}',
                  ),
                  _buildDetailItem(
                    'Jumlah Waktu Istirahat',
                    '${studentHealth?.istirahat}',
                  ),
                  _buildDetailItem(
                    'Perlu Dijemput Orang Tua',
                    '${studentHealth?.dijemput}',
                  ),
                  _buildDetailItem('Informasi Untuk Orang Tua',
                      '${studentHealth?.info_ortu}'),
                  _buildDetailItem(
                    'Yang Menangani',
                    '${studentHealth?.staff}',
                  ),
                  const SizedBox(height: 4.0),
                  CachedNetworkImage(
                    imageUrl: '${studentHealth?.img}',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const Text('Tidak ada foto'),
                  ),
                  // Provide your image path here
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
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
