import 'dart:convert';

import 'package:data/api/api_state.dart';
import 'package:data/dto/home_banner.dto.dart';
import 'package:data/dto/visit_ranker.dto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class HomeApi {
  Future<ApiState<List<VisitRankerDto>>> getVisitRanker() async {
    var data = await rootBundle.loadString(
      'packages/data/assets/json/visit_ranker.json',
    );
    var dataMap = await compute((message) async {
      var list = await jsonDecode(message) as List<dynamic>;
      var decodedData = list.map((e) => VisitRankerDto.fromJson(e)).toList();
      return ApiState.success(data: decodedData);
    }, data);

    return dataMap;
  }

  Future<ApiState<List<HomeBannerDto>>> getHomeBanner() async {
    var data = await rootBundle.loadString(
      'packages/data/assets/json/home_banner.json',
    );
    var dataMap = await compute((message) async {
      var list = await jsonDecode(message) as List<dynamic>;
      var decodedData = list.map((e) => HomeBannerDto.fromJson(e)).toList();
      return ApiState.success(data: decodedData);
    }, data);
    return dataMap;
  }
}
