import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/presentation/holiday/holiday_screen.dart';
import 'package:rabbaanii_portal/presentation/report/report_controller.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../di/providers.dart';
import '../webview/chrome_safari_browser.dart';

class FinanceReportScreen extends HookConsumerWidget {
  const FinanceReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    ref.listen(
      fetchFinanceReportProvider(key: key),
      (previous, next) => next.showToastOnError(context),
    );
    final fetchReport = ref.watch(fetchFinanceReportProvider(key: key));
    final itemCount =
        fetchReport.isLoading ? 10 : fetchReport.valueOrNull?.length ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan Keuangan'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchFinanceReportProvider(key: key).future,
        ),
        child: Skeletonizer(
          enabled: fetchReport.isLoading,
          child: ListView.separated(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final report = fetchReport.valueOrNull?.elementAtOrNull(index);
              return ListTile(
                title: Text(
                  '${report?.allocationName}',
                  style: context.titleMediumBold,
                ),
                trailing: Transform.translate(
                  offset: const Offset(12, 0),
                  child: Icon(Icons.keyboard_arrow_right),
                ),
                onTap: () async {
                  final browser = MyChromeSafariBrowser();
                  await browser.open(
                    url: WebUri('${report?.pdf}'),
                    settings: ChromeSafariBrowserSettings(
                      shareState: CustomTabsShareState.SHARE_STATE_OFF,
                      barCollapsingEnabled: true,
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ),
    );
  }
}
