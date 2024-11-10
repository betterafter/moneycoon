import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:domain/entity/my_info.entity.dart';
import 'package:domain/usecase/my_info.usecase.dart';

part 'home_my_info_section.riverpod.g.dart';

@riverpod
class HomeCalendarClick extends _$HomeCalendarClick {
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

@riverpod
Future<MyInfoEntity?> myInfoProvider(Ref ref) async {
  final myInfoUsecase = GetIt.instance.get<MyInfoUsecase>();
  return await myInfoUsecase.getMyInfo();
}
