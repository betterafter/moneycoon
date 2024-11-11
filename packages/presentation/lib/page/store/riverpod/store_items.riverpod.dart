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
  late List<StoreCategoryEntity> categoryList;

  @override
  Future<(String, String)> build() async {
    final usecase = GetIt.instance.get<StoreUsecase>();
    categoryList = await usecase.getCategoryList();
    return (categoryList.first.category, categoryList.first.store.first);
  }

  void setCategory(String category) {
    var store =
        categoryList.firstWhere((e) => e.category == category).store.first;
    state = AsyncValue.data((category, store));
  }

  void setStore(String store) {
    state = AsyncValue.data((state.value!.$1, store));
  }
}
