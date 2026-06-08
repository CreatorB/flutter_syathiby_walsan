import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';
import 'package:rabbaanii_portal/presentation/home/menu_home.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:rabbaanii_portal/presentation/prayer/dhikr_screen.dart';

class GuestPrayerScreen extends HookConsumerWidget {
  const GuestPrayerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menus = getMenus(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ibadah',
        ),
      ),
      body: ResponsiveGridRow(
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
                        context.goNamed(
                          menu.goToRouteName,
                          extra: menu.extra,
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
    );
  }

  List<MenuGrid> getMenus(BuildContext context) {
    final menus = [
      MenuGrid(
        title: 'Al-Quran',
        iconData: Icons.menu_book,
        goToRouteName: AppRoute.quran.name,
      ),
      MenuGrid(
        title: 'Hadits',
        iconData: Icons.book,
        goToRouteName: AppRoute.books.name,
      ),
      MenuGrid(
        title: 'Jadwal Shalat',
        iconData: Icons.access_time_rounded,
        goToRouteName: AppRoute.prayerTime.name,
      ),
      MenuGrid(
        title: 'Arah Kiblat',
        iconData: Icons.explore,
        goToRouteName: AppRoute.qibla.name,
      ),
      MenuGrid(
        title: 'Dzikir Pagi',
        iconData: Icons.sunny,
        goToRouteName: AppRoute.dhikr.name,
        extra: DhikrType.morning,
      ),
      MenuGrid(
        title: 'Dzikir Petang',
        iconData: Icons.brightness_6,
        goToRouteName: AppRoute.dhikr.name,
        extra: DhikrType.evening,
      ),
      MenuGrid(
        title: 'Murottal',
        iconData: Icons.spatial_audio_off,
        goToRouteName: AppRoute.murottal.name,
      ),
      MenuGrid(
        title: AppConstant.youtubeChannelName,
        iconData: Icons.live_tv,
        goToRouteName: AppRoute.tv.name,
      ),
    ];
    return menus;
  }
}