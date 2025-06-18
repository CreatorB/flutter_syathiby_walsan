import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/res/strings.dart';

import '../../generated/assets.gen.dart';
import '../webview/chrome_safari_browser.dart';
import '../webview/webview_screen.dart';

class QiblaScreen extends HookConsumerWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSupport =
        useMemoized(() => FlutterQiblah.androidDeviceSensorSupport(), []);
    final isDeviceSupportSnapshot = useFuture(deviceSupport);
    const qiblaFinderUrl = AppConstant.qiblaFinderUrl;

    if (isDeviceSupportSnapshot.data == false) {
      return const WebViewScreen(
        title: 'Arah Kiblat',
        url: qiblaFinderUrl,
      );
    }
    final qiblahStream = useMemoized(() => FlutterQiblah.qiblahStream, []);
    final qiblahSnapshot = useStream(qiblahStream);
    final compassSvg = SvgPicture.asset(Assets.images.compass);
    final needleSvg = SvgPicture.asset(
      Assets.images.needle,
      fit: BoxFit.contain,
      height: 300,
      alignment: Alignment.center,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arah Kiblat'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: ((qiblahSnapshot.data?.direction ?? 0) * (pi / 180) * -1),
              child: compassSvg,
            ),
            Transform.rotate(
              angle: ((qiblahSnapshot.data?.qiblah ?? 0) * (pi / 180) * -1),
              alignment: Alignment.center,
              child: needleSvg,
            ),
            Positioned(
              bottom: 8,
              child: Text("${qiblahSnapshot.data?.offset.toStringAsFixed(3)}°"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final browser = MyChromeSafariBrowser();
          await browser.open(
            url: WebUri(qiblaFinderUrl),
            settings: ChromeSafariBrowserSettings(
              shareState: CustomTabsShareState.SHARE_STATE_OFF,
              barCollapsingEnabled: true,
            ),
          );
        },
        label: const Text('Kiblat Maps'),
        icon: const Icon(Icons.map),
      ),
    );
  }
}
