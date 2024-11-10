import 'dart:async';

import 'package:domain/entity/home_banner.entity.dart';
import 'package:domain/usecase/home_view.usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_banner_section.riverpod.g.dart';

@riverpod
Future<List<HomeBannerEntity>?> homeBanner(Ref ref) async {
  final usecase = GetIt.instance.get<HomeViewUsecase>();
  return await usecase.getHomeBanner() ?? [];
}

@riverpod
class BannerController extends _$BannerController {
  Timer? _timer;
  int currentPage = 0;
  bool _isInitialized = false;

  @override
  (PageController, int) build() {
    final controller = PageController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.addListener(() {
        if (controller.hasClients && controller.page != null) {
          currentPage = controller.page!.round();
          state = (controller, currentPage);
          // state 업데이트
        }
      });
    });

    ref.onDispose(() {
      _timer?.cancel();
      _timer = null;
      controller.dispose();
      _isInitialized = false;
    });

    return (controller, currentPage);
  }

  void initialize(int itemCount) {
    if (_isInitialized || itemCount == 0) return;
    _isInitialized = true;

    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!state.$1.hasClients) return;

      try {
        final nextPage = (currentPage + 1);
        state.$1.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } catch (e) {
        print('Animation error: $e');
      }
    });
  }

  void stopAutoSlide() {
    _timer?.cancel();
    _timer = null;
    _isInitialized = false;
  }
}
