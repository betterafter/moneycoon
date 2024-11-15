import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/home/home.page.dart';
import 'package:presentation/page/my/my.page.dart';
import 'package:presentation/page/store/store.page.dart';
import 'package:presentation/screen/main/riverpod/bottom_navigation_bar.rp.dart';
import 'package:presentation/util/color.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  static const List<Widget> _pages = [
    HomePage(),
    StorePage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[ref.watch(bottomNavigationBarIndexProvider)],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 28,
          onTap: (index) {
            ref.read(bottomNavigationBarIndexProvider.notifier).setIndex(index);
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14,
          currentIndex: ref.watch(bottomNavigationBarIndexProvider),
          items: [
            BottomNavigationBarItem(
              icon: _inactiveIcon(
                icon: Icons.home,
                label: '홈',
              ),
              activeIcon: _activeIcon(
                icon: Icons.home_filled,
                label: '홈',
                color: AppColor.primaryBlue,
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: _inactiveIcon(
                icon: Icons.card_giftcard_rounded,
                label: '상점',
              ),
              activeIcon: _activeIcon(
                icon: Icons.card_giftcard_rounded,
                label: '상점',
                color: AppColor.primaryGreen,
              ),
              label: '상점',
            ),
            BottomNavigationBarItem(
              icon: _inactiveIcon(
                icon: Icons.person_rounded,
                label: 'MY',
              ),
              activeIcon: _activeIcon(
                icon: Icons.person_rounded,
                label: 'MY',
                color: Colors.blue,
              ),
              label: 'MY',
            ),
          ],
        ),
      ),
    );
  }

  static Widget _activeIcon({
    required IconData icon,
    required String label,
    required Color color,
  }) =>
      Icon(
        icon,
        color: color,
      );

  static Widget _inactiveIcon({
    required IconData icon,
    required String label,
  }) =>
      Icon(
        icon,
        color: Colors.grey,
      );
}
