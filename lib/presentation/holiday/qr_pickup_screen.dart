import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rabbaanii_portal/presentation/holiday/pickup_controller.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/providers.dart';
import '../../models/meeting/meeting.dart';

class QrPickupScreen extends HookConsumerWidget {
  final String? pickupId;

  const QrPickupScreen({super.key, this.pickupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final fetchQrPickup = ref.watch(
      fetchQrPickupProvider(key: key, id: '$pickupId'),
    );
    final pickup = fetchQrPickup.valueOrNull?.firstOrNull;
    final screenshotController = useMemoized(() => ScreenshotController());

    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code'),
          actions: [
            IconButton(
              onPressed: () async {
                try {
                  final result = await screenshotController.capture();
                  if (result == null) {
                    context.showErrorMessage('Gagal menyimpan screenshot');
                    return;
                  }

                  await Share.shareXFiles(
                    [
                      XFile.fromData(
                        result,
                        name: 'QR Code penjemputan',
                        mimeType: MimeType.jpeg.name,
                      ),
                    ],
                  );
                } catch (error) {
                  context.showErrorMessage('Gagal membagikan screenshot');
                }
              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () async {
                try {
                  final result = await screenshotController.capture();
                  if (result == null) {
                    context.showErrorMessage('Gagal menyimpan screenshot');
                    return;
                  }
                  await FileSaver.instance.saveAs(
                    bytes: result,
                    ext: 'jpg',
                    name: 'QR Code penjemputan',
                    mimeType: MimeType.jpeg,
                  );
                } catch (error) {
                  context.showErrorMessage('Gagal menyimpan screenshot');
                }
              },
              icon: const Icon(Icons.save),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(
            fetchQrPickupProvider(key: key, id: '$pickupId').future,
          ),
          child: Skeletonizer(
            enabled: fetchQrPickup.isLoading,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: QrImageView(data: '${pickup?.nis}-${pickup?.idSiswa}'),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    'Scan QR Code',
                    style: context.titleMediumBold,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                const Divider(),
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    'Gunakan QR Code ini untuk proses penjemputan dan pengembalian santri',
                    style: context.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
