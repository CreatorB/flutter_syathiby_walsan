import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/l10n/string_hardcoded.dart';

class ScaffoldNestedNavigation extends HookConsumerWidget {

  const ScaffoldNestedNavigation(
    this.navigationShell, {
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveScaffold(
      smallBreakpoint: const Breakpoint(endWidth: 700),
      mediumBreakpoint: const Breakpoint(beginWidth: 700, endWidth: 1000),
      largeBreakpoint: const Breakpoint(beginWidth: 1000),
      useDrawer: false,
      selectedIndex: navigationShell.currentIndex,
      onSelectedIndexChange: (int index) {
        _goBranch(index);
      },
      destinations: <NavigationDestination>[
        NavigationDestination(
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
          label: 'Beranda'.hardcoded,
        ),
        NavigationDestination(
          icon: const Icon(Icons.article_outlined),
          selectedIcon: const Icon(Icons.article),
          label: 'Berita'.hardcoded,
        ),
        NavigationDestination(
          icon: const Icon(Icons.mosque_outlined),
          selectedIcon: const Icon(Icons.mosque),
          label: 'Ibadah'.hardcoded,
        ),
        NavigationDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: const Icon(Icons.person),
          label: 'Akun'.hardcoded,
        ),
      ],
      body: (_) => SafeArea(
        bottom: false,
        child: navigationShell,
      ),
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
