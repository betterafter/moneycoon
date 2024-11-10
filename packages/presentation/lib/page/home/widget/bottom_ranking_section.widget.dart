import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/home/riverpod/home_visit_ranker_section.riverpod.dart';
import 'package:presentation/page/home/widget/bottom_ranking_section_item.widget.dart';
import 'package:presentation/util/color.dart';

class BottomRankingSection extends ConsumerWidget {
  const BottomRankingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visitRankerSection = ref.watch(getVisitRankerProvider).when(
          data: (data) => data,
          error: (error, stack) => null,
          loading: () => null,
        );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '이번달 초대 랭킹',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              Text(
                '자세히보기',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.primaryGrey,
                  letterSpacing: -1,
                  height: 0.9,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: AppColor.primaryGrey,
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: (visitRankerSection?.length.toDouble() ?? 0) * 55.5,
            child: ListView.separated(
              itemBuilder: (context, index) => BottomRankingSectionItemWidget(
                index: index,
                entity: visitRankerSection?[index],
              ),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.dividerGrey,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              shrinkWrap: true,
              itemCount: visitRankerSection?.length ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}
