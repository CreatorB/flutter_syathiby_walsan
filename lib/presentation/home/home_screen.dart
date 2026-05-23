import 'dart:convert';
import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' hide Store;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/generated/assets.gen.dart';
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
import 'package:rabbaanii_portal/utils/json_helper.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:versionarte/versionarte.dart';
import '../../di/providers.dart';
import '../../res/strings.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  String _getValidImageUrl(String? url) {
    if (url == null || url.trim().isEmpty) {
      return '';
    }
    return url;
  }

  /// Fetch detail student dengan debug detail
  Future<List<Store>> _safelyFetchDetailStudent(String key, Dio dio) async {
    try {
      print('🔍 Fetching detail student dengan key: $key');
      final response = await dio.get(
        'settings/detailwali.php',
        queryParameters: {'key': key},
        options: Options(
          responseType: ResponseType.plain,
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

      print('📡 Response Status: ${response.statusCode}');

      final raw = response.data;
      print('📦 Raw response type: ${raw.runtimeType}');

      if (raw == null || raw.toString().isEmpty) {
        print('⚠️ Response kosong/null!');
        return [];
      }

      final rawString = raw.toString();

      try {
        final cleanJson =
            extractJsonSafely(rawString, endpoint: 'detailwali.php');
        print('✅ cleanJson extracted');

        final json = jsonDecode(cleanJson);
        print('✅ Decoded JSON');

        if (json is! Map<String, dynamic>) {
          print('⚠️ JSON bukan Map: ${json.runtimeType}');
          return [];
        }

        final data = json['data'];
        if (data is! List) {
          print('⚠️ data bukan List: ${data.runtimeType}');
          return [];
        }

        print('✅ Parse ${data.length} items dari detailwali');

        return data
            .map((e) {
              try {
                if (e is! Map<String, dynamic>) {
                  print('⚠️ Item bukan Map: ${e.runtimeType}');
                  return null;
                }
                return Store.fromJson(e);
              } catch (err) {
                print('⚠️ Parse Store error: $err, data: $e');
                return null;
              }
            })
            .whereType<Store>()
            .toList();
      } catch (parseError) {
        print('⚠️ JSON parse error: $parseError');
        return [];
      }
    } catch (err) {
      print('❌ Network error _safelyFetchDetailStudent: $err');
      return [];
    }
  }

  /// Fetch student data dengan debug detail
  Future<List<Store>> _safelyFetchStudentData(String key, Dio dio) async {
    try {
      print('🔍 Fetching student data dengan key: $key');
      final response = await dio.get(
        'settings/datasiswa.php',
        queryParameters: {'key': key},
        options: Options(
          responseType: ResponseType.plain,
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

      print('📡 Response Status: ${response.statusCode}');

      final raw = response.data;
      print('📦 Raw response type: ${raw.runtimeType}');

      if (raw == null || raw.toString().isEmpty) {
        print('⚠️ Response kosong/null!');
        return [];
      }

      final rawString = raw.toString();

      try {
        final cleanJson =
            extractJsonSafely(rawString, endpoint: 'datasiswa.php');
        print('✅ cleanJson extracted');

        final json = jsonDecode(cleanJson);
        print('✅ Decoded JSON');

        if (json is! Map<String, dynamic>) {
          print('⚠️ JSON bukan Map: ${json.runtimeType}');
          return [];
        }

        final data = json['data'];
        if (data is! List) {
          print('⚠️ data bukan List: ${data.runtimeType}');
          return [];
        }

        print('✅ Parse ${data.length} items dari datasiswa');

        return data
            .map((e) {
              try {
                if (e is! Map<String, dynamic>) {
                  print('⚠️ Item bukan Map: ${e.runtimeType}');
                  return null;
                }
                return Store.fromJson(e);
              } catch (err) {
                print('⚠️ Parse Store error: $err, data: $e');
                return null;
              }
            })
            .whereType<Store>()
            .toList();
      } catch (parseError) {
        print('⚠️ JSON parse error: $parseError');
        return [];
      }
    } catch (err) {
      print('❌ Network error _safelyFetchStudentData: $err');
      return [];
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = currentUser?.key ?? '';
    final token = ref
        .watch(sharedPreferencesHelperProvider)
        .getString(AppConstant.keyDeviceToken);

    final dio = ref.watch(dioProvider);

    // ✅ FIX 1: Hanya call saveTokenToServer jika key dan token valid
    final saveTokenToServer = useMemoized(
      () {
        final keyValue = currentUser?.key ?? '';
        final tokenValue = token ?? '';

        // Jika key atau token kosong, skip request
        if (keyValue.isEmpty || tokenValue.isEmpty) {
          print('⚠️ Skip saveTokenToServer: key atau token kosong');
          return null;
        }

        print('✅ Calling saveTokenToServer dengan key: $keyValue');
        return ref.watch(
          saveTokenToServerProvider(
            key: keyValue,
            token: tokenValue,
          ).future,
        );
      },
      [currentUser?.key, token],
    );

    // Hanya trigger useFuture jika saveTokenToServer tidak null
    if (saveTokenToServer != null) {
      useFuture(saveTokenToServer);
    }

    final fetchDetailFuture = useMemoized(
      () => key.isNotEmpty
          ? _safelyFetchDetailStudent(key, dio)
          : Future.value([]),
      [key],
    );
    final fetchStudentFuture = useMemoized(
      () =>
          key.isNotEmpty ? _safelyFetchStudentData(key, dio) : Future.value([]),
      [key],
    );

    final fetchDetailAsync = useFuture(fetchDetailFuture);
    final fetchStudentAsync = useFuture(fetchStudentFuture);

    final detailStudent = fetchDetailAsync.data?.firstOrNull;
    final students = fetchStudentAsync.data != null
        ? List<Store>.from(fetchStudentAsync.data!)
        : null;

    final checkUpdateApp = useMemoized(() => _checkAppUpdate(context));
    useFuture(checkUpdateApp);

    // ✅ PENTING: Cek dari login response, bukan hit API external
    final packages = currentUser?.toJson()?['packages'] ?? 0;
    final isUserPremium = packages == 1;

    print('💡 🔍 packages: $packages → isUserPremium: $isUserPremium');

    final checkPayment = AsyncData<Map<String, dynamic>?>({
      'errCode': '200',
      'success': isUserPremium ? 'true' : 'false',
      'msg': isUserPremium
          ? 'Akses diberikan'
          : 'Paket belum aktif, hubungi admin',
    });

    final payment = checkPayment.valueOrNull;
    final errorCode = payment?['errCode'];
    final isSettled = payment?['success'];
    final message = payment?['msg'];

    print('📌 isSettled: $isSettled → message: $message');

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await fetchDetailFuture;
          await fetchStudentFuture;
          final keyValue = currentUser?.key ?? '';
          final tokenValue = token ?? '';
          if (keyValue.isNotEmpty && tokenValue.isNotEmpty) {
            await ref.refresh(saveTokenToServerProvider(
              key: keyValue,
              token: tokenValue,
            ));
          }
        },
        child: ListView(
          children: [
            _buildHeader(
              context,
              fetchDetailAsync.isLoading || fetchStudentAsync.isLoading,
              ref,
              currentUser,
              students,
              detailStudent,
            ),
            Column(
              children: [
                if (detailStudent != null)
                  _buildInfoPayment(
                    context,
                    ref,
                    errorCode,
                    isSettled,
                    message,
                  ),
                Skeletonizer(
                  enabled: false,
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
                      //   title: 'Penilaian',
                      //   iconData: Icons.edit_document,
                      //   goToRouteName: AppRoute.subject.name,
                      // ),
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
                      // MenuGrid(
                      //   title: 'Lap. Keuangan',
                      //   iconData: Icons.description,
                      //   goToRouteName: AppRoute.financeReport.name,
                      // ),
                      // MenuGrid(
                      //   title: 'Donasi Masjid',
                      //   iconData: Icons.mosque,
                      //   goToRouteName: AppRoute.donate.name,
                      // ),
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
                          '${detailStudent?.nameStaff ?? 'Loading...'}',
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
                      imageUrl: _getValidImageUrl(detailStudent?.img).isNotEmpty
                          ? _getValidImageUrl(detailStudent?.img)
                          : '',
                      name: detailStudent?.nameStaff ?? 'User',
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
                            '${detailStudent?.nameStore ?? 'Loading...'}',
                            style: context.titleMediumBold?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${detailStudent?.address ?? 'Loading...'}',
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
      enabled: false,
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
    if (students == null || students.isEmpty) return;

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
