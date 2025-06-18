import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/presentation/tv/tv_controller.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../di/providers.dart';
import '../webview/chrome_safari_browser.dart';

class DonateMosqueeScreen extends HookConsumerWidget {
  const DonateMosqueeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ytController = YoutubePlayerController(
      initialVideoId: 'KeUFQxXIivw',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        hideControls: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donasi Masjid Rabbaanii'),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: YoutubePlayer(
              controller: ytController,
              showVideoProgressIndicator: true,
              progressIndicatorColor: context.colorPrimary,
              progressColors: ProgressBarColors(
                playedColor: context.colorPrimary,
                handleColor: context.colorPrimaryContainer,
              ),
              onReady: () {
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 12,
              bottom: 4,
            ),
            child: Text(
              'Donasi Pembangunan Masjid Rabbaanii',
              style: context.titleLargeBold,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8,
            ),
            child: SelectableText(
              AppConstant.donateDescription,
              style: context.bodyMedium,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  Clipboard.setData(
                    const ClipboardData(text: AppConstant.donateBankAccount),
                  );
                  context.showSuccessMessage(
                    'Berhasil menyalin nomer rekening',
                  );
                },
                label: Text(
                  'Salin Rekening\nBSI: ${AppConstant.donateBankAccount}',
                  style: context.bodySmall,
                ),
                icon: const Icon(Icons.copy, size: 18),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton(
                onPressed: () async {
                  const phoneNumber = '6282112366207';
                  const message = 'Assalamu\'alaikum ustadz ingin konfirmasi transfer untuk donasi masjid ';
                  final browser = MyChromeSafariBrowser();
                  await browser.open(
                    url: WebUri('https://wa.me/$phoneNumber?text=$message'),
                    settings: ChromeSafariBrowserSettings(
                      shareState: CustomTabsShareState.SHARE_STATE_OFF,
                      barCollapsingEnabled: true,
                    ),
                  );
                },
                child: const Text('Konfirmasi Transfer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
