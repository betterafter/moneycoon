import 'package:flutter/material.dart';
import 'package:presentation/common/point_icon.widget.dart';

class TopMySectionWidget extends StatelessWidget {
  final int myPoint;
  final int totalPoint;

  const TopMySectionWidget({
    super.key,
    required this.myPoint,
    required this.totalPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 36),
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
          ],
        ),
      ],
    );
  }
}
