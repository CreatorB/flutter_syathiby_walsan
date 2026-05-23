import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/presentation/analytics/analytics_controller.dart';
import 'package:rabbaanii_portal/presentation/webview/chrome_safari_browser.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnalyticsDashboardScreen extends StatefulHookConsumerWidget {
  const AnalyticsDashboardScreen({super.key});

  @override
  ConsumerState<AnalyticsDashboardScreen> createState() =>
      _AnalyticsDashboardScreenState();
}

class _AnalyticsDashboardScreenState
    extends ConsumerState<AnalyticsDashboardScreen> {
  DateTime _tanggalAwal = DateTime.now().subtract(const Duration(days: 30));
  DateTime _tanggalAkhir = DateTime.now();
  String _exportFormat = 'pdf';

  Future<void> _selectDateRange() async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      initialDateRange: DateTimeRange(start: _tanggalAwal, end: _tanggalAkhir),
    );
    if (picked != null) {
      setState(() {
        _tanggalAwal = picked.start;
        _tanggalAkhir = picked.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';

    ref.listen(
      fetchSiswaAnalyticsProvider(
        key: key,
        tanggalAwal:
            '${_tanggalAwal.year}-${_tanggalAwal.month.toString().padLeft(2, '0')}-${_tanggalAwal.day.toString().padLeft(2, '0')}',
        tanggalAkhir:
            '${_tanggalAkhir.year}-${_tanggalAkhir.month.toString().padLeft(2, '0')}-${_tanggalAkhir.day.toString().padLeft(2, '0')}',
      ),
      (previous, next) => next.showToastOnError(context),
    );

    final analyticsAsync = ref.watch(
      fetchSiswaAnalyticsProvider(
        key: key,
        tanggalAwal:
            '${_tanggalAwal.year}-${_tanggalAwal.month.toString().padLeft(2, '0')}-${_tanggalAwal.day.toString().padLeft(2, '0')}',
        tanggalAkhir:
            '${_tanggalAkhir.year}-${_tanggalAkhir.month.toString().padLeft(2, '0')}-${_tanggalAkhir.day.toString().padLeft(2, '0')}',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Analitik Santri'),
        actions: [
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            onPressed: () => _showExportDialog(context, key, isPdf: true),
            tooltip: 'Export PDF',
          ),
          IconButton(
            icon: const Icon(Icons.table_chart),
            onPressed: () => _showExportDialog(context, key, isPdf: false),
            tooltip: 'Export Excel',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: _selectDateRange,
                    child: Row(
                      children: [
                        const Icon(Icons.date_range, size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '${_tanggalAwal.day}/${_tanggalAwal.month}/${_tanggalAwal.year} - ${_tanggalAkhir.day}/${_tanggalAkhir.month}/${_tanggalAkhir.year}',
                            style: context.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => ref.refresh(
                fetchSiswaAnalyticsProvider(
                  key: key,
                  tanggalAwal:
                      '${_tanggalAwal.year}-${_tanggalAwal.month.toString().padLeft(2, '0')}-${_tanggalAwal.day.toString().padLeft(2, '0')}',
                  tanggalAkhir:
                      '${_tanggalAkhir.year}-${_tanggalAkhir.month.toString().padLeft(2, '0')}-${_tanggalAkhir.day.toString().padLeft(2, '0')}',
                ).future,
              ),
              child: analyticsAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, st) => Center(child: Text('Error: $e')),
                data: (analytics) {
                  final summary = analytics.summary;
                  return CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: _buildSummaryCards(summary),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Daftar Santri',
                              style: context.titleMediumBold),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final student = analytics.data?.elementAtOrNull(index);
                            if (student == null) return const SizedBox();
                            return _buildStudentTile(student);
                          },
                          childCount: analytics.data?.length ?? 0,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCards(dynamic summary) {
    if (summary == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ringkasan', style: context.titleMediumBold),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildSummaryCard(
                  'Absensi',
                  '${summary.attendance?.total ?? 0}',
                  subtitle:
                      'Hadir: ${summary.attendance?.hadir ?? 0} (${summary.attendance?.persentaseHadir ?? 0}%)',
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildSummaryCard(
                  'Tahfidz',
                  '${summary.tahfidz?.total ?? 0}',
                  subtitle:
                      'Lancar: ${summary.tahfidz?.lancar ?? 0}',
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildSummaryCard(
                  'Pelanggaran',
                  '${summary.violations?.total ?? 0}',
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildSummaryCard(
                  'Kesehatan',
                  '${summary.health?.total ?? 0}',
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title, String value,
      {String? subtitle, Color? color}) {
    return Card(
      color: color?.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: context.bodySmall),
            Text(value,
                style: context.headlineSmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                )),
            if (subtitle != null) ...[
              const SizedBox(height: 4),
              Text(subtitle, style: context.bodySmall),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStudentTile(dynamic student) {
    return ListTile(
      title: Text(student.namaLengkap ?? '-'),
      subtitle: Text(
          'NIS: ${student.nis ?? '-'} | Kelas: ${student.kelas ?? '-'}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildChip(
              'Absen', '${student.attendance?.persentase ?? 0}%', Colors.blue),
          const SizedBox(width: 4),
          _buildChip('THF', '${student.tahfidz ?? 0}', Colors.green),
          const SizedBox(width: 4),
          _buildChip(
              'Vio', '${student.violations ?? 0}', Colors.red),
        ],
      ),
    );
  }

  Widget _buildChip(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(label, style: TextStyle(fontSize: 10, color: color)),
          Text(value,
              style: TextStyle(
                  fontSize: 12, color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  void _showExportDialog(BuildContext context, String key,
      {required bool isPdf}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isPdf ? 'Export PDF' : 'Export Excel'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Format Portrait (Single Student)'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                _doExport(context, key, format: 'portrait', isPdf: isPdf);
              },
            ),
            ListTile(
              title: const Text('Format Tabel (Multiple Students)'),
              leading: const Icon(Icons.table_chart),
              onTap: () {
                Navigator.pop(context);
                _doExport(context, key, format: 'table', isPdf: isPdf);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Future<void> _doExport(BuildContext context, String key,
      {required String format, required bool isPdf}) async {
    final tanggalAwalStr =
        '${_tanggalAwal.year}-${_tanggalAwal.month.toString().padLeft(2, '0')}-${_tanggalAwal.day.toString().padLeft(2, '0')}';
    final tanggalAkhirStr =
        '${_tanggalAkhir.year}-${_tanggalAkhir.month.toString().padLeft(2, '0')}-${_tanggalAkhir.day.toString().padLeft(2, '0')}';

    try {
      if (isPdf) {
        final bytes = await ref.read(exportPdfProvider(
          key: key,
          format: format,
          tanggalAwal: tanggalAwalStr,
          tanggalAkhir: tanggalAkhirStr,
        ).future);

        final browser = MyChromeSafariBrowser();
        final base64 = base64Encode(bytes);
        final blobUrl = 'data:application/pdf;base64,$base64';
        await browser.open(
          url: WebUri(blobUrl),
          settings: ChromeSafariBrowserSettings(
            shareState: CustomTabsShareState.SHARE_STATE_OFF,
            barCollapsingEnabled: true,
          ),
        );
      } else {
        final bytes = await ref.read(exportExcelProvider(
          key: key,
          tanggalAwal: tanggalAwalStr,
          tanggalAkhir: tanggalAkhirStr,
          type: format,
        ).future);

        final browser = MyChromeSafariBrowser();
        final base64 = base64Encode(bytes);
        final dataUrl = 'data:application/vnd.ms-excel;base64,$base64';
        await browser.open(
          url: WebUri(dataUrl),
          settings: ChromeSafariBrowserSettings(
            shareState: CustomTabsShareState.SHARE_STATE_OFF,
            barCollapsingEnabled: true,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Export failed: $e')),
        );
      }
    }
  }
}