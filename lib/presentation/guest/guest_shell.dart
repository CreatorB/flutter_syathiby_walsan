import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GuestShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const GuestShell({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Ibadah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pengguna',
          ),
        ],
      ),
    );
  }
}