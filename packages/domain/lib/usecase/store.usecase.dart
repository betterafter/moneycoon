import 'package:domain/entity/store_category.entity.dart';
import 'package:domain/entity/store_item.entity.dart';
import 'package:domain/repository/store.repository.dart';

class StoreUsecase {
  final StoreRepository storeRepository;

  StoreUsecase({required this.storeRepository});

  Future<List<StoreCategoryEntity>> getCategoryList() async {
    return storeRepository.getCategoryList();
  }

  Future<List<StoreItemEntity>> getStoreItems(String url) async {
    return storeRepository.getStoreItems(url);
  }
}
