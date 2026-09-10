import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/custom_avatar_widget.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'account_controller.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(getCurrentUserProvider);
    final key = '${currentUser?.key}';
    // Nomor wali yang sedang login. Kunci sesi hanya menandai SANTRI dan dipakai
    // bersama seluruh walinya, jadi tanpa ini layar Akun menampilkan nama, nomor,
    // dan email wali LAIN -- lihat catatan di account_controller.dart.
    final noWali = '${currentUser?.user ?? ''}';
    final fetchUserProfile = ref.watch(
      fetchProfileProvider(key: key, phoneNumber: noWali),
    );
    final isDarkMode = AdaptiveTheme.of(context).mode.isDark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Akun'.hardcoded,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          fetchProfileProvider(key: key, phoneNumber: noWali).future,
        ),
        child: Skeletonizer(
          enabled: fetchUserProfile.isLoading,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              InkWell(
                onTap: () {
                  context.goNamed(AppRoute.account.name);
                },
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CustomAvatar(
                          name: '${fetchUserProfile.valueOrNull?.nameParent}',
                          imageUrl:
                              '${fetchUserProfile.valueOrNull?.imageParent}',
                          size: 60,
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _truncateString(
                                  fetchUserProfile.valueOrNull?.nameParent ??
                                  fetchUserProfile.valueOrNull?.email ??
                                  '',
                                  15,
                                ),
                                style: context.titleMediumBold,
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                '${fetchUserProfile.valueOrNull?.phoneNumber}',
                                style: context.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.edit,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Akun'.hardcoded,
                style: context.titleMediumBold,
              ),
              const SizedBox(height: 8.0),
              Column(
                children: [
                  buildListItem(
                    'Ubah Profil',
                    onTap: () {
                      context.goNamed(AppRoute.account.name);
                    },
                  ),
                  const Divider(),
                  buildListItem(
                    'Ubah Password',
                    onTap: () {
                      context.goNamed(AppRoute.changePassword.name);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                'Lainnya'.hardcoded,
                style: context.titleMediumBold,
              ),
              const SizedBox(height: 8.0),
              Column(
                children: [
                  SwitchListTile.adaptive(
                    contentPadding: const EdgeInsets.only(left: 16),
                    value: isDarkMode,
                    onChanged: (value) {
                      AdaptiveTheme.of(context).toggleThemeMode(
                        useSystem: false,
                      );
                    },
                    title: const Text('Mode Gelap'),
                  ),
                  const Divider(),
                  buildListItem(
                    'Kebijakan Privasi',
                    onTap: () {
                      context.goNamed(
                        AppRoute.privacyPolicy.name,
                        queryParameters: {
                          'title': 'Kebijakan Privasi',
                          'url': AppConstant.privacyUrl,
                        },
                      );
                    },
                  ),
                  const Divider(),
                  buildListItem(
                    'Syarat & Ketentuan',
                    onTap: () {
                      context.goNamed(
                        AppRoute.agreement.name,
                        queryParameters: {
                          'title': 'Syarat & Ketentuan',
                          'url': AppConstant.termUrl,
                        },
                      );
                    },
                  ),
                  const Divider(),
                  buildListItem(
                    'Tentang Kami',
                    onTap: () {
                      context.goNamed(
                        AppRoute.aboutUs.name,
                        queryParameters: {
                          'title': 'Tentang kami',
                          'url': AppConstant.aboutUrl,
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () async {
                    final pref = ref.read(sharedPreferencesHelperProvider);
                    await pref.remove(AppConstant.keyLoginSession);
                    await pref.remove(AppConstant.keyRememberMe);
                    await pref.remove(AppConstant.keySavedPhone);
                    await pref.remove(AppConstant.keySavedPassword);

                    if (!context.mounted) return;
                    context.goNamed(AppRoute.login.name);
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    color: context.colorError,
                  ),
                  label: Text(
                    'Keluar',
                    style: context.titleMediumBold?.copyWith(
                      color: context.colorError,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'v1.0',
                  textAlign: TextAlign.center,
                  style: context.labelLarge?.copyWith(
                    color: context.colorOnSurface.withOpacity(0.38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _truncateString(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  Widget buildListItem(
    String title, {
    IconData? icon,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            if (icon != null) Icon(icon),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
