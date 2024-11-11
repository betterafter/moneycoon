import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/common/point.widget.dart';
import 'package:presentation/page/home/riverpod/home_my_info_section.riverpod.dart';
import 'package:presentation/util/color.dart';

class ProfileSectionWidget extends ConsumerWidget {
  const ProfileSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(myInfoProviderProvider).value;

    if (myInfo == null) {
      return const SizedBox();
    }

    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                myInfo.profileImageUrl,
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              '${myInfo.name} 님',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                '내 정보',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.textGrey,
                ),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColor.iconGrey,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.backgroundDark,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            '보유 쿤',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primaryWhite,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: AppColor.iconGrey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${myInfo.point}',
                            style: const TextStyle(
                              fontSize: 28,
                              color: AppColor.primaryWhite,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const PointWidget(
                            size: 16,
                            textColor: AppColor.backgroundDark,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(6, 6, 10, 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: AppColor.backgroundGrey,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.attach_money_outlined,
                          size: 14,
                          color: AppColor.backgroundGrey,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '출금',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.backgroundGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
