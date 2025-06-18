import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';

import '../../models/score/score.dart';

class StudentScoreDetailScreen extends HookConsumerWidget {
  final Nilai? score;
  final String? teacherName;

  const StudentScoreDetailScreen({
    super.key,
    this.score,
    this.teacherName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penilaian'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Center(
            child: Text(
              score?.namaLengkap ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildDetailItem(
            context,
            'Nama Guru',
            teacherName ?? '',
          ),
          _buildDetailItem(
            context,
            'Mata Pelajaran',
            score?.mapel ?? '',
          ),
          _buildDetailItem(
            context,
            'Kelas',
            score?.kelas ?? '',
          ),
          Card.outlined(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Pekerjaan Rumah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                _buildRowText('PR 1', '${score?.pr1 ?? 0}'),
                _buildRowText('PR 2', '${score?.pr2 ?? 0}'),
                _buildRowText('PR 3', '${score?.pr3 ?? 0}'),
                _buildRowText('PR 4', '${score?.pr4 ?? 0}'),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card.outlined(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Nilai Tugas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                _buildRowText('Tugas 1', '${score?.t1 ?? 0}'),
                _buildRowText('Tugas 2', '${score?.t2 ?? 0}'),
                _buildRowText('Tugas 3', '${score?.t3 ?? 0}'),
                _buildRowText('Tugas 4', '${score?.t4 ?? 0}'),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card.outlined(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Penilaian Harian (PH)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                _buildRowText('PH 1', '${score?.ph1 ?? 0}'),
                _buildRowText('PH 2', '${score?.ph2 ?? 0}'),
                _buildRowText('PH 3', '${score?.ph3 ?? 0}'),
                _buildRowText('PH 4', '${score?.ph4 ?? 0}'),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card.outlined(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Nilai Lainnya',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                _buildRowText('PTS', '${score?.pts  ?? 0}'),
                _buildRowText('PAS', '${score?.pta ?? 0}'),
                _buildRowText('Kedisiplinan', score?.kedisiplinan ?? '-'),
                _buildRowText('Kerapihan', score?.kerapihan  ?? '-'),
                _buildRowText('Kebersihan', score?.kebersihan  ?? '-'),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card.outlined(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Keterangan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                _buildRowText(score?.keterangan ?? '-', ''),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.0,
            color: context.colorOnSurface.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          content,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }

  Widget _buildRowText(
    String title,
    String value, {
    bool enableValueBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight:
                        enableValueBold ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
