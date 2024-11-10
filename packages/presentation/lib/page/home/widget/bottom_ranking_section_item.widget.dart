import 'dart:math';

import 'package:domain/entity/visit_ranker.entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/common/point.widget.dart';
import 'package:presentation/page/home/riverpod/home_visit_ranker_section.riverpod.dart';
import 'package:presentation/util/color.dart';

class BottomRankingSectionItemWidget extends ConsumerWidget {
  final int index;
  final VisitRankerEntity? entity;

  const BottomRankingSectionItemWidget({
    super.key,
    required this.index,
    required this.entity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (entity == null) {
      return const SizedBox();
    }

    final rankerDetailClick = ref.watch(rankerDetailClickProvider(index));

    return GestureDetector(
      onTap: () {
        ref.read(rankerDetailClickProvider(index).notifier).click();
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    if (index == 0 || index == 1 || index == 2)
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: CustomPaint(
                          painter: FilledHexagonPainter(
                            color: index == 0
                                ? AppColor.gold
                                : index == 1
                                    ? AppColor.silver
                                    : AppColor.bronze,
                          ),
                          // size: const Size(30, 30),
                        ),
                      ),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Text(
                        '${index + 1}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          height: 2.2,
                          color: index == 0 || index == 1 || index == 2
                              ? AppColor.primaryWhite
                              : AppColor.primaryGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Text(
                  entity!.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    color: AppColor.primaryGrey,
                  ),
                ),
                const Spacer(),
                Text(
                  entity!.point,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                const PointWidget(fontSize: 8),
                const SizedBox(width: 12),
                Icon(
                  rankerDetailClick
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 24,
                  color: AppColor.iconGrey,
                ),
              ],
            ),
            if (rankerDetailClick)
              Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.fromLTRB(12, 12, 36, 12),
                decoration: BoxDecoration(
                  color: AppColor.backgroundGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          '1. 동반 적립',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryBlue,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          entity!.companionPoint,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const PointWidget(fontSize: 8),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text(
                          '2. 미션 달성 적립',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryGreen,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          entity!.missionPoint,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const PointWidget(fontSize: 8),
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

class FilledHexagonPainter extends CustomPainter {
  final Color color;

  FilledHexagonPainter({this.color = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    // (10, 10)
    final center = Offset(size.width / 2, size.height / 2);
    // 10
    final radius = size.width / 2;

    for (int i = 0; i < 6; i++) {
      final angle = (i * 2 * pi / 6) + pi / 2;
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle);

      print('($x, $y)');

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
