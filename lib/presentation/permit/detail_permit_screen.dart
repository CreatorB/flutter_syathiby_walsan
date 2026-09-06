import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/presentation/permit/permit_controller.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DetailPermitScreen extends HookConsumerWidget {
  final String permitId;

  const DetailPermitScreen({
    super.key,
    required this.permitId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    ref.listen(permitControllerProvider, (previous, next) {
      next.showToastOnError(context);
    });
    final fetchPermitDetail = ref.watch(
      fetchPermitDetailProvider(key: key, id: permitId),
    );
    final permit = fetchPermitDetail.valueOrNull?.firstOrNull;
    final dateFormat = ref.watch(formatDateProvider(
      '${permit?.date}',
      format: 'EEEE, dd MMMM yyyy',
    ));
    final lastDateFormat = ref.watch(formatDateProvider(
      '${permit?.lastDate}',
      format: 'EEEE, dd MMMM yyyy',
    ));
    final isPermitRejected = permit?.status == "Ditolak";
    final isPermitWaiting = permit?.status == "Menunggu Persetujuan";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Izin'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchPermitDetailProvider(key: key, id: permitId).future,
        ),
        child: Skeletonizer(
          enabled: fetchPermitDetail.isLoading,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      permit?.staff ?? '',
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
                    'Tanggal Izin',
                    dateFormat ?? '',
                  ),
                  _buildDetailItem(
                      context, 'Alasan Izin', permit?.namePermit ?? ''),
                  _buildDetailItem(
                      context, 'Jumlah Hari Izin', permit?.day ?? ''),
                  _buildDetailItem(
                      context, 'Izin Berakhir', lastDateFormat ?? ''),
                  _buildDetailItem(
                    context,
                    'Detail Izin',
                    permit?.detail ?? '',
                  ),
                  _buildDetailItem(
                    context,
                    'Persetujuan Oleh',
                    permit?.aproval ?? '',
                  ),
                  _buildDetailItem(
                    context,
                    'Status',
                    isPermitRejected
                        ? '${permit?.status} dengan alasan ${permit?.alasan}'
                        : '${permit?.status}',
                  ),
                  if (permit?.tapKeluar != null || permit?.tapMasuk != null) ...[
                    const SizedBox(height: 8.0),
                    Text(
                      'Record Tap Izin',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: context.colorOnSurface,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    _buildDetailItem(
                      context,
                      'Tap Keluar',
                      permit?.tapKeluar ?? '-',
                    ),
                    _buildDetailItem(
                      context,
                      'Tap Masuk',
                      permit?.tapMasuk ?? '-',
                    ),
                  ],
                  Text(
                    'Dokumen Pendukung',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: context.colorOnSurface.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  CachedNetworkImage(
                    imageUrl: '${permit?.doc}',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => const Text(
                      'Tidak ada dokumen',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (isPermitWaiting) ...[
                    const SizedBox(height: 24.0),
                    FilledButton.tonalIcon(
                      onPressed: () => _confirmAndCancel(context, ref, key, permitId),
                      icon: Icon(Icons.cancel_outlined, color: context.colorError),
                      label: Text(
                        'Batalkan Izin',
                        style: TextStyle(color: context.colorError),
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: context.colorErrorContainer,
                        minimumSize: const Size.fromHeight(48),
                      ),
                    ),
                  ],
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
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

  Future<void> _confirmAndCancel(
    BuildContext context,
    WidgetRef ref,
    String key,
    String permitId,
  ) async {
    final confirm = await showOkCancelAlertDialog(
      context: context,
      title: 'Batalkan Izin',
      message:
          'Yakin ingin membatalkan pengajuan izin ini? Tindakan ini tidak dapat dibatalkan.',
      okLabel: 'Batalkan',
      cancelLabel: 'Kembali',
      isDestructiveAction: true,
    );
    if (confirm != OkCancelResult.ok) return;
    if (!context.mounted) return;
    final result =
        await ref.read(permitControllerProvider.notifier).cancelPermit(
              key: key,
              id: permitId,
            );
    if (result == null || !context.mounted) return;
    if (result.status == true || result.status == 'true') {
      context.showSuccessMessage(result.msg);
      context.pop(true);
    } else {
      context.showErrorMessage(result.msg);
      ref.invalidate(fetchPermitDetailProvider(key: key, id: permitId));
    }
  }
}
