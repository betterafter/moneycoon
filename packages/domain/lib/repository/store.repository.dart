import 'package:domain/entity/store_category.entity.dart';
import 'package:domain/entity/store_item.entity.dart';

abstract class StoreRepository {
  Future<List<StoreCategoryEntity>> getCategoryList();
  Future<List<StoreItemEntity>> getStoreItems(String url);
}
