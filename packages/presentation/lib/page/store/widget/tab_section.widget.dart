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

    var categoryItem = ref.watch(selectedCategoryProvider).value!.$1;
    var storeItem = ref.watch(selectedCategoryProvider).value!.$2;

    return Column(
      children: [
        if (categoryList != null && categoryList.isNotEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          title: e.value.title,
                          isClicked: e.key == categoryItem,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        const SizedBox(height: 36),
        if (categoryList != null &&
            categoryList[categoryItem] != null &&
            categoryList[categoryItem]!.store.isNotEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryList[categoryItem]!
                    .store
                    .map((e) => GestureDetector(
                          onTap: () {
                            ref
                                .read(selectedCategoryProvider.notifier)
                                .setStore(e.name);
                          },
                          child: CategoryStoreItemWidget(
                            icon: e.icon,
                            title: e.title,
                            isClicked: e.name == storeItem,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
      ],
    );
  }
}
