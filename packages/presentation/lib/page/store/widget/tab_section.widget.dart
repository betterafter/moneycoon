import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/page/store/riverpod/store_items.riverpod.dart';
import 'package:presentation/page/store/widget/category_items.dart';

class TabSectionWidget extends ConsumerWidget {
  const TabSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var categoryList =
        ref.watch(selectedCategoryProvider.notifier).categoryList;

    var storeItems = ref.watch(selectedCategoryProvider).value!.$1;

    return Column(
      children: [
        if (categoryList != null && categoryList.isNotEmpty)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categoryList.entries
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        ref
                            .read(selectedCategoryProvider.notifier)
                            .setCategory(e.key);
                      },
                      child: CategoryItemWidget(
                        icon: e.value.icon,
                        title: e.key,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        const SizedBox(height: 10),
        if (categoryList != null &&
            categoryList[storeItems] != null &&
            categoryList[storeItems]!.store.isNotEmpty)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categoryList[storeItems]!
                  .store
                  .map((e) => GestureDetector(
                        onTap: () {
                          ref
                              .read(selectedCategoryProvider.notifier)
                              .setStore(e.name);
                        },
                        child: CategoryStoreItemWidget(
                          icon: e.icon,
                          title: e.name,
                        ),
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }
}
