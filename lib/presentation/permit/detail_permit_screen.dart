import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
}
