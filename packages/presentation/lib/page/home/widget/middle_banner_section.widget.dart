import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/home/riverpod/home_banner_section.riverpod.dart';
import 'package:presentation/util/color.dart';

class MiddleBannerSectionWidget extends ConsumerWidget {
  const MiddleBannerSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeBanner = ref.watch(homeBannerProvider).when(
          data: (data) => data,
          error: (error, stack) => null,
          loading: () => null,
        );

    final controller = ref.watch(bannerControllerProvider);

    ref.watch(bannerControllerProvider.notifier).initialize(
          homeBanner?.length ?? 0,
        );

    return Stack(
      children: [
        Container(
          height: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: PageView.builder(
            controller: controller.$1,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  homeBanner?[index % (homeBanner.length)].imageUrl ?? '',
                  errorBuilder: (context, error, stack) =>
                      const SizedBox.shrink(),
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: null,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            height: 28,
            width: 60,
            decoration: BoxDecoration(
              color: AppColor.primaryBlack.withOpacity(0.5),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: AppColor.primaryWhite,
              ),
            ),
            child: Center(
              child: Text(
                '${(ref.watch(bannerControllerProvider).$2 % (homeBanner?.length ?? 1)) + 1} / ${homeBanner?.length ?? 0}',
                style: const TextStyle(
                  color: AppColor.primaryWhite,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
