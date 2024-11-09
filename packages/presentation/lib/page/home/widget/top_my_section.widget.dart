import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/common/point_icon.widget.dart';
import 'package:presentation/page/home/riverpod/calendar_click.rp.dart';

class TopMySectionWidget extends ConsumerWidget {
  final int myPoint;
  final int totalPoint;

  const TopMySectionWidget({
    super.key,
    required this.myPoint,
    required this.totalPoint,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '현재 나의 보유 쿤',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '$myPoint',
                    style: const TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const PointIconWidget(),
                ],
              ),
              Row(
                children: [
                  Text(
                    '누적 $totalPoint',
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: -1,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const PointIconWidget(
                    size: 16,
                    borderColor: Colors.grey,
                    backgroundColor: Colors.transparent,
                    textColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 48),
            ],
          ),
          GestureDetector(
            onTapDown: (details) async {
              ref.read(calendarClickProvider.notifier).setPressed(true);
            },
            onTap: () async {
              ref.read(calendarClickProvider.notifier).setPressed(false);
            },
            child: Stack(
              children: [
                if (ref.read(calendarClickProvider.notifier).isClicked)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 100,
                        height: 36,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 76, left: 28),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 21, 21, 21),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '출석 완료',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 9),
                        child: ClipPath(
                          clipper: TriangleClipper(),
                          child: Container(
                            width: 12,
                            height: 7,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                Container(
                  height: 180 + 60,
                  margin: const EdgeInsets.only(top: 60),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 50),
                    width: ref.watch(calendarClickProvider),
                    height: ref.watch(calendarClickProvider),
                    child: Image.asset(
                      'packages/presentation/assets/images/calendar.png',
                      width: ref.watch(calendarClickProvider),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 간단한 클리퍼 클래스
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
