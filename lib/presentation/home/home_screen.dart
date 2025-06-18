import 'dart:io';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' hide Store;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/generated/assets.gen.dart';
import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/store/store.dart';
import 'package:rabbaanii_portal/models/user/login.dart';
import 'package:rabbaanii_portal/presentation/home/bottomsheet_add_student_screen.dart';
import 'package:rabbaanii_portal/presentation/home/home_controller.dart';
import 'package:rabbaanii_portal/presentation/home/menu_home.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:versionarte/versionarte.dart';
import '../../di/providers.dart';
import '../../res/strings.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    final token = ref
        .watch(sharedPreferencesHelperProvider)
        .getString(AppConstant.keyDeviceToken);
    final saveTokenToServer = useMemoized(
      () => ref.watch(
        saveTokenToServerProvider(
          key: '${currentUser?.token}',
          token: '$token',
        ).future,
      ),
    );
    useFuture(saveTokenToServer);

    final fetchDetailStudent = ref.watch(
      fetchDetailStudentProvider(
        key: key,
      ),
    );
    final fetchStudent = ref.watch(
      fetchStudentDataProvider(
        key: key,
      ),
    );
    final detailStudent = fetchDetailStudent.valueOrNull?.firstOrNull;
    ref.listen(
      fetchDetailStudentProvider(
        key: key,
      ),
      (previous, next) => next.showToastOnError(context),
    );
    final checkUpdateApp = useMemoized(() => _checkAppUpdate(context));
    useFuture(checkUpdateApp);

    final checkPayment = ref.watch(
      fetchCheckPaymentProvider(studentId: '${detailStudent?.type}'),
    );
    final payment = checkPayment.valueOrNull;
    final errorCode = payment?['errCode'];
    final isSettled = payment?['success'];
    final message = payment?['msg'];

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () {
          ref.invalidate(fetchDetailStudentProvider);
          ref.invalidate(
              fetchCheckPaymentProvider(studentId: '${detailStudent?.type}'));
          return ref.refresh(
            fetchStudentDataProvider(
              key: key,
            ).future,
          );
        },
        child: ListView(
          children: [
            _buildHeader(
              context,
              fetchStudent.isLoading,
              ref,
              currentUser,
              fetchStudent.valueOrNull,
              detailStudent,
            ),
            Column(
              children: [
                _buildInfoPayment(
                  context,
                  ref,
                  errorCode,
                  isSettled,
                  message,
                ),
                Skeletonizer(
                  enabled: checkPayment.isLoading,
                  child: _buildMenuHome(
                    context: context,
                    errorCode: errorCode,
                    isSettled: isSettled,
                    message: message,
                    menus: [
                      MenuGrid(
                        title: 'Izin',
                        iconData: Icons.info,
                        goToRouteName: AppRoute.studentPermit.name,
                      ),
                      // MenuGrid(
                      //   title: 'Tagihan',
                      //   iconData: Icons.payment,
                      //   goToRouteName: AppRoute.bill.name,
                      // ),
                      MenuGrid(
                        title: 'Kesehatan',
                        iconData: Icons.healing,
                        goToRouteName: AppRoute.studentHealth.name,
                      ),
                      MenuGrid(
                        title: 'Kartu Santri',
                        iconData: Icons.credit_card,
                        goToRouteName: AppRoute.studentCard.name,
                      ),
                      // MenuGrid(
                      //   title: 'Tabungan',
                      //   iconData: Icons.monetization_on,
                      //   goToRouteName: AppRoute.studentSaving.name,
                      // ),
                      MenuGrid(
                        title: 'Penilaian',
                        iconData: Icons.edit_document,
                        goToRouteName: AppRoute.subject.name,
                      ),
                      MenuGrid(
                        title: 'Pelanggaran',
                        iconData: Icons.warning,
                        goToRouteName: AppRoute.studentViolation.name,
                      ),
                      MenuGrid(
                        title: 'Aktivitas Sekolah',
                        iconData: Icons.school,
                        goToRouteName: AppRoute.schoolActivity.name,
                      ),
                      MenuGrid(
                        title: 'Tahsin Tahfidz',
                        iconData: Icons.local_library_rounded,
                        goToRouteName: AppRoute.tahfidzActivity.name,
                      ),
                      MenuGrid(
                        title: 'Aktivitas Santri',
                        iconData: Icons.access_time,
                        goToRouteName: AppRoute.studentActivity.name,
                      ),
                      MenuGrid(
                        title: 'Libur Santri',
                        iconData: Icons.holiday_village,
                        goToRouteName: AppRoute.studentHoliday.name,
                      ),
                      MenuGrid(
                        title: 'Kaldik Pondok',
                        iconData: Icons.calendar_month,
                        goToRouteName: AppRoute.calendarSchool.name,
                      ),
                      MenuGrid(
                        title: 'Lap. Keuangan',
                        iconData: Icons.description,
                        goToRouteName: AppRoute.financeReport.name,
                      ),
                      MenuGrid(
                        title: 'Donasi Masjid',
                        iconData: Icons.mosque,
                        goToRouteName: AppRoute.donate.name,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    bool isLoading,
    WidgetRef ref,
    Login? currentUser,
    List<Store>? students,
    Store? detailStudent,
  ) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            Assets.images.schools.path,
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Container(
            height: 200,
            color: Colors.black.withOpacity(0.18),
          ),
        ),
        Positioned(
          top: 20,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              width: 120,
              Assets.images.logo.path,
              opacity: const AlwaysStoppedAnimation(0.38),
            ),
          ),
        ),
        Skeletonizer(
          enabled: isLoading,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        onPressed: () {
                          _showUserSelected(
                            context,
                            ref,
                            students,
                            currentUser,
                          );
                        },
                        label: Text(
                          '${detailStudent?.nameStaff}',
                          style: context.titleMediumBold?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.white,
                        ),
                        iconAlignment: IconAlignment.end,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomAvatar(
                      size: 40,
                      imageUrl: '${detailStudent?.img}',
                      name: '${detailStudent?.nameStaff}',
                      color: context.colorInversePrimary,
                      bold: true,
                    ),
                  ),
                ],
              ),
              Card.outlined(
                margin: const EdgeInsets.all(8),
                color: Colors.black.withOpacity(0.25),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xADFFFFFF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${detailStudent?.nameStore}',
                            style: context.titleMediumBold?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${detailStudent?.address}',
                            style: context.bodyMedium?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoPayment(
    BuildContext context,
    WidgetRef ref,
    String? errorCode,
    String? isSettled,
    String? message,
  ) {
    return Skeletonizer(
      enabled: message == null,
      child: Visibility(
        visible: isSettled == 'false' && errorCode == '200',
        child: Transform.translate(
          offset: const Offset(0, -20),
          child: Card(
            color: context.colorPrimaryContainer,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: context.colorPrimary,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    size: 24,
                    color: context.colorPrimary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          message ?? 'Tidak ada info terbaru',
                          textStyle: context.bodyMediumBold?.copyWith(
                            color: context.colorPrimary,
                          ),
                        ),
                      ],
                      repeatForever: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuHome({
    required BuildContext context,
    String? errorCode,
    String? isSettled,
    String? message,
    required List<MenuGrid> menus,
  }) {
    return Transform.translate(
      offset: const Offset(0, -20),
      child: Card.outlined(
        margin: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 2,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 8,
          ),
          child: ResponsiveGridRow(
            children: menus
                .map(
                  (menu) => ResponsiveGridCol(
                    lg: 2,
                    md: 3,
                    sm: 3,
                    xs: 4,
                    child: InkWell(
                      onTap: menu.onClicked ??
                          () {
                            final isAvailable =
                                errorCode == '200' && isSettled == 'true';
                            if (!isAvailable) {
                              context.showSnackBar(
                                '$message untuk dapat mengakses fitur ini.',
                                isErrorMessage: true,
                              );
                              return;
                            }
                            context.goNamed(
                              menu.goToRouteName,
                              extra: menu.extra,
                              queryParameters: menu.queryParameters ?? {},
                            );
                          },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Card(
                              elevation: 4,
                              color: context.colorPrimaryContainer,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: context.colorPrimary,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                menu.iconData,
                                color: context.colorPrimary,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            menu.title,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Future<void> _showUserSelected(
    BuildContext context,
    WidgetRef ref,
    List<Store>? students,
    Login? currentUser,
  ) async {
    if (students == null) return;

    final result = await showModalActionSheet(
      context: context,
      title: 'Ubah Akun Santri',
      cancelLabel: 'Tambah Akun Santri',
      builder: (context, child) => Platform.isAndroid
          ? IntrinsicHeight(
              child: Column(
                children: [
                  child,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Tambah Akun Santri'),
                    ),
                  ),
                ],
              ),
            )
          : child,
      isDismissible: false,
      canPop: false,
      actions: students
          .map(
            (e) => SheetAction(
              label: '${e.nameStaff}',
              key: '${e.position}',
            ),
          )
          .toList(),
    );
    if (!context.mounted) return;

    if (result == null) {
      await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        context: context,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (context) => const BottomsheetAddStudentScreen(),
      );
      return;
    }

    final studentSelected = currentUser?.copyWith(key: result);
    final pref = ref.read(sharedPreferencesHelperProvider);
    await pref.setObject(AppConstant.keyLoginSession, studentSelected);
    ref.invalidate(getCurrentUserProvider);
  }

  Future<void> _checkAppUpdate(BuildContext context) async {
    final result = await Versionarte.check(
      versionarteProvider: const RestfulVersionarteProvider(
        url: AppConstant.updateUrl,
      ),
    );
    if (result.status != VersionarteStatus.outdated || !context.mounted) {
      return;
    }
    final message = result.details?.status.getMessageForLanguage('id');
    final downloadUrl = result.details?.downloadUrl;
    await showOkAlertDialog(
      context: context,
      title: 'Pemberitahuan',
      message: '$message',
      barrierDismissible: false,
      canPop: false,
      okLabel: 'Update',
    );
    final Uri url = Uri.parse('$downloadUrl');
    final isAvailable = await canLaunchUrl(url);
    if (!isAvailable) return;
    await launchUrl(url, mode: LaunchMode.externalApplication);
    _checkAppUpdate(context);
  }
}
