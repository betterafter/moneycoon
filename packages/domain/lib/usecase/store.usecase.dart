import 'package:domain/entity/store_category.entity.dart';
import 'package:domain/entity/store_item.entity.dart';
import 'package:domain/repository/store.repository.dart';

class StoreUsecase {
  final StoreRepository storeRepository;

  StoreUsecase({required this.storeRepository});

  Future<Map<String, StoreCategoryEntity>> getCategoryList() async {
    var categoryList = await storeRepository.getCategoryList();
    return categoryList
        .asMap()
        .map((key, value) => MapEntry(value.category, value));
  }

  Future<List<StoreItemEntity>> getStoreItems(String url) async {
    return storeRepository.getStoreItems(url);
  }
}
