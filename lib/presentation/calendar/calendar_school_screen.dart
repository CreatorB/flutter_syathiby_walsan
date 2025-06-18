import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/presentation/activity/school_activity_screen.dart';
import 'package:rabbaanii_portal/presentation/calendar/calendar_school_controller.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CalendarSchoolScreen extends HookConsumerWidget {
  const CalendarSchoolScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalendar Pendidikan'),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Semester Ganjil'),
            Tab(text: 'Semester Genap'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: List.generate(
          tabController.length,
          (index) => _buildTabView(
            context,
            ref,
            index,
          ),
        ),
      ),
    );
  }

  Widget _buildTabView(
    BuildContext context,
    WidgetRef ref,
    int tabIndex,
  ) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final isOddSemester = tabIndex == 0;
    final fetchCalendar = ref.watch(
      isOddSemester
          ? fetchCalendarSchoolOddProvider(key: key)
          : fetchCalendarSchoolEvenProvider(key: key),
    );
    final itemCount =
        fetchCalendar.isLoading ? 10 : fetchCalendar.valueOrNull?.length ?? 0;

    return RefreshIndicator(
      onRefresh: () => ref.refresh(
        isOddSemester
            ? fetchCalendarSchoolOddProvider(key: key).future
            : fetchCalendarSchoolEvenProvider(key: key).future,
      ),
      child: Skeletonizer(
        enabled: fetchCalendar.isLoading,
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            final calendar = fetchCalendar.valueOrNull?.elementAtOrNull(index);
            final parseDate = DateFormat('yyyy-MM-dd')
                .tryParse('${calendar?.allocationName}');
            final formatDate = DateFormat('EEEE, dd MMMM yyyy', 'id').format(
              parseDate ?? DateTime.now(),
            );

            return ListTile(
              title: Text(
                formatDate,
                style: context.titleMediumBold,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${calendar?.bankAccount}',
                    style: context.bodyMedium,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
