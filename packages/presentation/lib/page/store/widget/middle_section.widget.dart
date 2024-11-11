import 'package:flutter/material.dart';
import 'package:presentation/util/color.dart';

class MiddleSectionWidget extends StatelessWidget {
  const MiddleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.sizeOf(context).width,
          height: 50,
          decoration: BoxDecoration(
            color: AppColor.backgroundGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            children: [
              Icon(Icons.payment_rounded),
              SizedBox(width: 8),
              Text(
                '쿤 적립 즉시 쿠폰을 구매할 수 있어요.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
