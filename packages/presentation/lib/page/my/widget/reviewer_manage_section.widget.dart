import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/home/riverpod/home_my_info_section.riverpod.dart';
import 'package:presentation/util/color.dart';

class ReviewerManageSectionWidget extends ConsumerWidget {
  const ReviewerManageSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(myInfoProviderProvider).value;

    if (myInfo == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('체험단 관리'),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.backgroundGrey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _reviewInfoItem(
                '신청',
                myInfo.applyList.length,
                AppColor.primaryBlack,
              ),
              _reviewInfoItem(
                '체험중',
                myInfo.playList.length,
                AppColor.primaryRed,
              ),
              _reviewInfoItem(
                '제출완료',
                myInfo.applySuccessList.length,
                AppColor.primaryPurple,
              ),
              _reviewInfoItem(
                '종료',
                myInfo.playSuccessList.length,
                AppColor.primaryGrey,
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '체험단 계정 관리',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '패널티 관리',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '나의 성향',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '+ 성향 등록하기',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryBlue,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _reviewInfoItem(String title, int count, Color color) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
