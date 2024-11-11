import 'package:flutter/material.dart';
import 'package:presentation/common/point.widget.dart';
import 'package:presentation/util/color.dart';

class PointButtonWidget extends StatelessWidget {
  final int point;

  const PointButtonWidget({
    super.key,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppColor.secondaryGrey),
      ),
      child: Row(
        children: [
          const PointWidget(
            size: 12,
          ),
          const SizedBox(width: 4),
          Text(
            point.toString(),
            style: const TextStyle(
              fontSize: 14,
              color: AppColor.primaryBlack,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
