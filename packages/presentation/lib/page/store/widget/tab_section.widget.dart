import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabSectionWidget extends ConsumerWidget {
  const TabSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        ),
      ],
    );
  }
}
