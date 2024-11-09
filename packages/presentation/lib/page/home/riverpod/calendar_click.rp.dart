import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_click.rp.g.dart';

@riverpod
class CalendarClick extends _$CalendarClick {
  static const double minSize = 120;
  static const double maxSize = 150;

  bool isPressed = false;
  bool isClicked = false;

  @override
  double build() => maxSize;

  void setPressed(bool pressed) async {
    if (isClicked) {
      return;
    }

    if (pressed) {
      state = minSize;
    } else {
      await Future.delayed(const Duration(milliseconds: 100));
      state = maxSize;
      isClicked = true;
    }
  }
}
