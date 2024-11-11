import 'package:domain/entity/store_category.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain/entity/store_item.entity.dart';
import 'package:domain/usecase/store.usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_items.riverpod.g.dart';

@riverpod
Future<List<StoreItemEntity>> storeItems(Ref ref, String url) async {
  final storeUsecase = GetIt.instance.get<StoreUsecase>();
  return storeUsecase.getStoreItems(url);
}

@riverpod
class SelectedCategory extends _$SelectedCategory {
  late Map<String, StoreCategoryEntity> categoryList;

  @override
  Future<(String, String)> build() async {
    final usecase = GetIt.instance.get<StoreUsecase>();
    categoryList = await usecase.getCategoryList();
    return (
      categoryList.entries.first.key,
      categoryList.entries.first.value.store.first.name
    );
  }

  void setCategory(String category) {
    var store = categoryList[category]?.store.first;
    state = AsyncValue.data((category, store?.name ?? ''));
  }

  void setStore(String store) {
    state = AsyncValue.data((state.value!.$1, store));
  }
}
