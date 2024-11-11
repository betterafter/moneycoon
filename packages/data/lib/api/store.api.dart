import 'dart:convert';

import 'package:data/api/api_state.dart';
import 'package:data/dto/store_category.dto.dart';
import 'package:data/dto/store_item.dto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class StoreApi {
  Future<ApiState<List<StoreCategoryDto>>> getCategoryList() async {
    var json = await rootBundle.loadString(
      'packages/data/assets/json/store_category.json',
    );

    var dataMap = await compute((message) async {
      var json = await jsonDecode(message) as List<dynamic>;
      return json.map((e) => StoreCategoryDto.fromJson(e)).toList();
    }, json);

    return ApiState.success(data: dataMap);
  }

  Future<ApiState<List<StoreItemDto>>> getStoreItems(String url) async {
    Uri uri = Uri.parse(url);
    var path = uri.path;
    var category = path.split('/').first;
    var fileName = path.split('/').last;

    var json = await rootBundle.loadString(
      'packages/data/assets/json/$category/${fileName}_items.json',
    );

    var dataMap = await compute((message) async {
      var json = await jsonDecode(message) as List<dynamic>;
      return ApiState.success(
        data: json.map((e) => StoreItemDto.fromJson(e)).toList(),
      );
    }, json);

    return dataMap;
  }
}
