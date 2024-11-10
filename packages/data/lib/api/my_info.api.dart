import 'dart:convert';

import 'package:data/api/api_state.dart';
import 'package:data/dto/my_info.dto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MyInfoApi {
  Future<ApiState<MyInfoDto>> getMyInfo() async {
    final dto = await rootBundle.loadString(
      'packages/data/assets/json/my_info.json',
    );

    var dataMap = await compute((message) async {
      var json = await jsonDecode(message) as Map<String, dynamic>;
      return ApiState.success(data: MyInfoDto.fromJson(json));
    }, dto);

    return dataMap;
  }
}
