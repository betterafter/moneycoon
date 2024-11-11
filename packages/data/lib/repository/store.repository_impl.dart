import 'package:data/api/store.api.dart';
import 'package:domain/entity/store_category.entity.dart';
import 'package:domain/entity/store_item.entity.dart';
import 'package:domain/repository/store.repository.dart';
import 'package:flutter/foundation.dart';

class StoreRepositoryImpl implements StoreRepository {
  final StoreApi storeApi;

  StoreRepositoryImpl({required this.storeApi});

  @override
  Future<List<StoreCategoryEntity>> getCategoryList() async {
    var data = await storeApi.getCategoryList();
    return data.on(
      success: (data) => compute(
        (data) {
          return data!.map(
            (e) {
              var categoryJson = e.toJson();
              categoryJson['store'] = e.store.map((e) {
                return e.toJson();
              }).toList();
              return StoreCategoryEntity.fromJson(categoryJson);
            },
          ).toList();
        },
        data,
      ),
      error: (error, stackTrace) {
        throw Exception(error);
      },
    );
  }

  @override
  Future<List<StoreItemEntity>> getStoreItems(String url) async {
    var data = await storeApi.getStoreItems(url);
    return data.on(
      success: (data) {
        try {
          return compute(
            (data) =>
                data!.map((e) => StoreItemEntity.fromJson(e.toJson())).toList(),
            data,
          );
        } catch (e) {
          throw Exception(e);
        }
      },
      error: (error, stackTrace) => throw Exception(error),
    );
  }
}
