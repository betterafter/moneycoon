import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_bar.rp.g.dart';

@riverpod
class BottomNavigationBarIndex extends _$BottomNavigationBarIndex {
  @override
  int get state => 0;

  @override
  int build() => state;

  void setIndex(int index) {
    state = index;
  }
}
