import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/util/color.dart';

class ServiceSectionWidget extends ConsumerWidget {
  const ServiceSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('서비스'),
        SizedBox(height: 24),
        Row(
          children: [
            Text('공지사항', style: TextStyle(fontSize: 18)),
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
            Text('자주묻는 질문', style: TextStyle(fontSize: 18)),
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
