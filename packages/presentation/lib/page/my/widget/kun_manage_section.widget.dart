import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/util/color.dart';

class KunManageSectionWidget extends ConsumerWidget {
  const KunManageSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('쿤/부업 관리'),
        SizedBox(height: 24),
        Row(
          children: [
            Text('부업 계정 관리', style: TextStyle(fontSize: 18)),
            Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text('포스팅 부업 내역', style: TextStyle(fontSize: 18)),
            Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text('친구 초대', style: TextStyle(fontSize: 18)),
            Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text('쿠폰 관리', style: TextStyle(fontSize: 18)),
            Spacer(),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
      ],
    );
  }
}
