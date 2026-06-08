import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rabbaanii_portal/models/pickup/pickup.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/presentation/holiday/pickup_controller.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';

import '../../di/providers.dart';
import '../../utils/custom_avatar_widget.dart';

class StudentHomecomingScreen extends HookConsumerWidget {
  final String? id;
  final String? name;

  const StudentHomecomingScreen({
    super.key,
    this.id,
    this.name,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final fetchCurrentPickup = ref.watch(
      fetchAllPickupParentProvider(key: key, id: '$id'),
    );
    final currentPickup = fetchCurrentPickup.valueOrNull?.firstOrNull;

    final pagingController = useMemoized(
      () => PagingController<int, Penjemputan>(firstPageKey: 1),
    );

    useEffect(() {
      void fetchPage(int pageKey) async {
        try {
          final newItems = await ref.read(pickupServiceProvider).gets(
                key,
                '$id',
                pageKey,
              );
          if (newItems.isEmpty) {
            pagingController.appendLastPage(newItems);
          } else {
            pagingController.appendPage(newItems, pageKey + 1);
          }
        } catch (error) {
          pagingController.error = error;
        }
      }

      pagingController.addPageRequestListener(fetchPage);
      return () => pagingController.removePageRequestListener(fetchPage);
    }, [pagingController]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Libur Kenaikan Kelas'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(
            fetchAllPickupParentProvider(key: key, id: '$id'),
          );
          return Future.sync(pagingController.refresh);
        },
        child: ListView(
          children: [
            PagedListView<int, Penjemputan>(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, index) {
                  return _buildItemList(context, ref, item);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {
                  context.goNamed(
                    AppRoute.registrationPickup.name,
                    queryParameters: {
                      'id': id,
                      'name': id,
                    },
                  );
                },
                child: const Text('Penjemput'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  if (currentPickup == null) {
                    context.showErrorMessage(
                      'Penjemputan harus didaftarkan terlebih dahulu',
                    );
                    return;
                  }
                  context.goNamed(
                    AppRoute.qrPickup.name,
                    queryParameters: {
                      'id': id,
                      'name': id,
                    },
                  );
                },
                child: const Text('QR Code'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemList(
    BuildContext context,
    WidgetRef ref,
    Penjemputan item,
  ) {
    return ListTile(
      title: Text(
        '${item.namaLengkap}',
        style: context.bodyMediumBold,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NIS: ${item.nis}',
            style: context.bodyMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Kelas: ${item.kelas}',
            style: context.bodySmall,
          ),
        ],
      ),
      leading: CustomAvatar(
        name: '${item.namaLengkap}',
        imageUrl: '${item.img}',
        size: 40,
      ),
      trailing: Transform.translate(
        offset: const Offset(12, 0),
        child: Chip(
          labelStyle: context.bodySmall,
          padding: EdgeInsets.zero,
          label: Text(
            '${item.status}',
          ),
        ),
      ),
      onTap: () async {
        await showOkAlertDialog(
          context: context,
          title: '${item.namaLengkap}',
          message: '''NIS: ${item.nis}
Kelas: ${item.kelas}
Asrama: ${item.asrama}
''',
          okLabel: 'OK',
        );
      },
    );
  }
}
