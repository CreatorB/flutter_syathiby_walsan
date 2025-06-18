import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/presentation/permit/paging_permit_controller.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:riverpod_infinite_scroll_pagination/riverpod_infinite_scroll_pagination.dart';

class PermitScreen extends HookConsumerWidget {
  const PermitScreen({super.key});

  static const int pagedSize = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Izin Santri'),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () => ref.refresh(
              pagingPermitControllerProvider(key: key).future,
            ),
            child: ListView(
              children: [
                PaginatedListView(
                  pullToRefresh: false,
                  shrinkWrap: true,
                  state: ref.watch(
                    pagingPermitControllerProvider(key: key),
                  ),
                  notifier: ref.read(
                    pagingPermitControllerProvider(key: key).notifier,
                  ),
                  itemBuilder: (context, data) => _buildItemList(
                    context,
                    ref,
                    data,
                  ),
                  skeleton: _buildItemList(
                    context,
                    ref,
                    const Permit(namaSiswa: 'Hello World'),
                  ),
                  numSkeletons: 10,
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
                context.goNamed(AppRoute.addStudentPermit.name);
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
              // labelPadding: EdgeInsets.zero,
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
      onTap: () {
        context.goNamed(
          AppRoute.detailStudentPermit.name,
          extra: permit.idPermit,
        );
      },
    );
  }
}
