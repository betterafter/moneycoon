import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/common/point.widget.dart';
import 'package:presentation/common/point_icon.widget.dart';
import 'package:presentation/page/home/riverpod/home_my_info_section.riverpod.dart';
import 'package:presentation/page/store/widget/middle_section.widget.dart';
import 'package:presentation/page/store/widget/tab_section.widget.dart';

class StorePage extends ConsumerWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(myInfoProviderProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: const Text(
              '상점',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            PointButtonWidget(point: myInfo.value?.point ?? 0),
            const SizedBox(width: 2),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              MiddleSectionWidget(),
              SizedBox(height: 16),
              TabSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
