import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/store/riverpod/store_items.riverpod.dart';
import 'package:presentation/page/store/widget/category_items.dart';

class BottomItemsSectionWidget extends ConsumerWidget {
  const BottomItemsSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(storeItemsProvider).value;

    if (items == null) {
      return const SizedBox.shrink();
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.2,
      ),
      itemBuilder: (context, index) {
        return StoreItemWidget(
          image: items[index].imgUrl,
          title: items[index].name,
          price: items[index].price.toString(),
        );
      },
      itemCount: items.length,
    );
  }
}
