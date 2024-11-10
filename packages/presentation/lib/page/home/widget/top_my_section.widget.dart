import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/common/point_icon.widget.dart';
import 'package:presentation/page/home/riverpod/home_my_info_section.riverpod.dart';

class TopMySectionWidget extends ConsumerWidget {
  const TopMySectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(myInfoProviderProvider).when(
          data: (data) => data,
          error: (error, stack) => null,
          loading: () => null,
        );

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
                    '${myInfo?.point}',
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
                    '누적 ${myInfo?.totalDonationAmount}',
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
              ref.read(homeCalendarClickProvider.notifier).setPressed(true);
            },
            onTap: () async {
              ref.read(homeCalendarClickProvider.notifier).setPressed(false);
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 36,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20, right: 28),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 21, 21, 21),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ref
                                      .read(homeCalendarClickProvider.notifier)
                                      .isClicked
                                  ? '출석 완료'
                                  : '출석체크 잊지마세요!',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            if (ref
                                .read(homeCalendarClickProvider.notifier)
                                .isClicked)
                              const Row(
                                children: [
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 37),
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
                  margin: const EdgeInsets.only(top: 0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: ref.watch(homeCalendarClickProvider),
                    height: ref.watch(homeCalendarClickProvider),
                    child: Image.asset(
                      'packages/presentation/assets/images/calendar.png',
                      width: ref.watch(homeCalendarClickProvider),
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
