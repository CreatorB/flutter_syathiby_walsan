import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/presentation/permit/permit_controller.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';

class PermitScreen extends HookConsumerWidget {
  const PermitScreen({super.key});

  static const int pagedSize = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';

    final pagingController = useMemoized(
      () => PagingController<int, Permit>(firstPageKey: 1),
    );

    useEffect(() {
      void fetchPage(int pageKey) async {
        try {
          final result = await ref.read(permitServiceProvider).getSantri(key, pageKey);
          if (result.isEmpty) {
            pagingController.appendLastPage(result);
          } else {
            pagingController.appendPage(result, pageKey + 1);
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
        title: const Text('Izin Santri'),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () => Future.sync(pagingController.refresh),
            child: ListView(
              children: [
                PagedListView<int, Permit>(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  pagingController: pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Permit>(
                    itemBuilder: (context, permit, index) {
                      return _buildItemList(
                        context,
                        ref,
                        permit,
                        pagingController,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            right: 16,
            child: FloatingActionButton.extended(
              heroTag: 'permit',
              onPressed: () async {
                final added = await context.pushNamed<bool>(
                  AppRoute.addStudentPermit.name,
                );
                if (added == true) {
                  pagingController.refresh();
                }
              },
              label: const Text('Pengajuan Izin'),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemList(
    BuildContext context,
    WidgetRef ref,
    Permit permit,
    PagingController<int, Permit> pagingController,
  ) {
    final dateFormat = ref.watch(formatDateProvider(
      '${permit.date}',
      format: 'EEE, dd MMMM yyyy',
    ));
    final status = permit.status;
    final isStatusRejected = status == "Ditolak";
    final isStatusAccepted = status == "Disetujui";

    return ListTile(
      title: Text(
        '${permit.namaSiswa}',
        style: context.bodyMediumBold,
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${permit.namePermit}',
                  style: context.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '$dateFormat',
                  style: context.bodySmall,
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(12, 0),
            child: Chip(
              label: Text(
                '$status',
                style: context.labelSmall?.copyWith(
                  color: isStatusAccepted
                      ? context.colorOnPrimary
                      : isStatusRejected
                      ? context.colorOnError
                      : context.colorOnSurfaceVariant,
                ),
              ),
              shape: const StadiumBorder(
                side: BorderSide(),
              ),
              backgroundColor: isStatusAccepted
                  ? context.colorPrimary
                  : isStatusRejected
                  ? context.colorError
                  : context.colorSurfaceVariant,
              side: BorderSide(
                color: isStatusAccepted
                    ? context.colorPrimary
                    : isStatusRejected
                    ? context.colorError
                    : context.colorOnSurfaceVariant,
              ),
              padding: EdgeInsets.zero
            ),
          ),
        ],
      ),
      leading: CustomAvatar(
        name: '${permit.namaSiswa}',
        imageUrl: '${permit.img}',
        size: 40,
      ),
      trailing: status == 'Menunggu Persetujuan'
          ? IconButton(
              icon: Icon(
                Icons.cancel_outlined,
                color: context.colorError,
              ),
              tooltip: 'Batalkan Izin',
              onPressed: () => _confirmCancelFromList(
                context,
                ref,
                permit,
                pagingController,
              ),
            )
          : null,
      onTap: () async {
        final changed = await context.pushNamed<bool>(
          AppRoute.detailStudentPermit.name,
          extra: permit.idPermit,
        );
        if (changed == true) {
          pagingController.refresh();
        }
      },
      onLongPress: () => _showItemActions(
        context,
        ref,
        permit,
        pagingController,
      ),
    );
  }

  Future<void> _showItemActions(
    BuildContext context,
    WidgetRef ref,
    Permit permit,
    PagingController<int, Permit> pagingController,
  ) async {
    final currentUser = ref.read(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final permitId = '${permit.idPermit}';
    final errorColor = context.colorError;
    final isWaiting = permit.status == 'Menunggu Persetujuan';
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.visibility_outlined),
                title: const Text('Lihat Detail'),
                onTap: () async {
                  Navigator.pop(sheetContext);
                  final result = await context.pushNamed<bool>(
                    AppRoute.detailStudentPermit.name,
                    extra: permit.idPermit,
                  );
                  if (result == true && context.mounted) {
                    pagingController.refresh();
                  }
                },
              ),
              if (isWaiting)
                ListTile(
                  leading: Icon(Icons.cancel_outlined, color: errorColor),
                  title: Text(
                    'Batalkan Izin',
                    style: TextStyle(color: errorColor),
                  ),
                  onTap: () async {
                    Navigator.pop(sheetContext);
                    final confirm = await showOkCancelAlertDialog(
                      context: context,
                      title: 'Batalkan Izin',
                      message:
                          'Yakin ingin membatalkan pengajuan izin "${permit.namePermit}" untuk ${permit.namaSiswa}?',
                      okLabel: 'Batalkan',
                      cancelLabel: 'Kembali',
                      isDestructiveAction: true,
                    );
                    if (confirm != OkCancelResult.ok) return;
                    if (!context.mounted) return;
                    final result = await ref
                        .read(permitControllerProvider.notifier)
                        .cancelPermit(key: key, id: permitId);
                    if (result == null || !context.mounted) return;
                    if (result.status == true || result.status == 'true') {
                      context.showSuccessMessage(result.msg);
                      pagingController.refresh();
                    } else {
                      context.showErrorMessage(result.msg);
                    }
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _confirmCancelFromList(
    BuildContext context,
    WidgetRef ref,
    Permit permit,
    PagingController<int, Permit> pagingController,
  ) async {
    final currentUser = ref.read(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final permitId = '${permit.idPermit}';
    final confirm = await showOkCancelAlertDialog(
      context: context,
      title: 'Batalkan Izin',
      message:
          'Yakin ingin membatalkan pengajuan izin "${permit.namePermit}" untuk ${permit.namaSiswa}?',
      okLabel: 'Batalkan',
      cancelLabel: 'Kembali',
      isDestructiveAction: true,
    );
    if (confirm != OkCancelResult.ok) return;
    if (!context.mounted) return;
    try {
      final result = await ref
          .read(permitControllerProvider.notifier)
          .cancelPermit(key: key, id: permitId);
      if (!context.mounted) return;
      if (result != null && (result.status == true || result.status == 'true')) {
        context.showSuccessMessage(result.msg);
        pagingController.refresh();
      } else if (result != null) {
        context.showErrorMessage(result.msg);
      } else {
        context.showErrorMessage('Gagal terhubung ke server');
      }
    } catch (e) {
      if (!context.mounted) return;
      context.showErrorMessage(e);
    }
  }
}