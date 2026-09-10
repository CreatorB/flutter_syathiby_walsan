import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/models/event/event.dart';
import 'package:rabbaanii_portal/presentation/holiday/holiday_controller.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:rabbaanii_portal/utils/keadaan_kosong.dart';

class HolidayScreen extends HookConsumerWidget {
  const HolidayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final pagingController = useMemoized(
      () => PagingController<int, Event>(
        firstPageKey: 1,
      ),
    );

    Future<void> fetchData(int pageKey) async {
      try {
        final result = await ref.read(
          fetchAllEventProvider(key: key, page: pageKey).future,
        );
        if (result.isEmpty) {
          pagingController.appendLastPage(result);
        } else {
          pagingController.appendPage(result, pageKey + 1);
        }
      } catch (error) {
        pagingController.error = error;
      }
    }

    useEffect(() {
      void listener(int pageKey) {
        fetchData(pageKey);
      }
      pagingController.addPageRequestListener(listener);
      return () => pagingController.removePageRequestListener(listener);
    }, [pagingController]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Pondok'.hardcoded),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future.sync(pagingController.refresh),
        child: PagedListView(
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate<Event>(
                    // Pesan bawaan paket berbahasa Inggris ("No items found").
                    noItemsFoundIndicatorBuilder: (context) => const KeadaanKosong(
                      judul: 'Belum ada jadwal libur',
                      keterangan: 'Jadwal libur santri akan muncul di sini setelah ditetapkan pondok.',
                      ikon: Icons.beach_access_outlined,
                    ),
                    firstPageErrorIndicatorBuilder: (context) => KeadaanGagal(
                      onCobaLagi: pagingController.retryLastFailedRequest,
                    ),
            itemBuilder: (context, event, index) {
              final startDate = ref.watch(
                formatDateProvider('${event.start_date}',
                    format: 'EEE, dd MMMM yyyy'),
              );
              final endDate = ref.watch(
                formatDateProvider('${event.finish_date}',
                    format: 'EEE, dd MMMM yyyy'),
              );

              return Card.outlined(
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 4,
                  ),
                  child: ListTile(
                    title: Text(
                      '${event.name_event}',
                      style: context.titleMediumBold,
                    ),
                    subtitle: Text('$startDate s/d $endDate'),
                    trailing: Transform.translate(
                      offset: const Offset(12, 0),
                      child: const Icon(Icons.keyboard_arrow_right),
                    ),
                    onTap: () {
                      context.goNamed(
                        AppRoute.homecoming.name,
                        queryParameters: {
                          'id': event.id_event,
                          'name': event.name_event,
                        },
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
