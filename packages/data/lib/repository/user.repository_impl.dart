import 'package:data/api/my_info.api.dart';
import 'package:domain/entity/my_info.entity.dart';
import 'package:domain/repository/user.repository.dart';
import 'package:flutter/foundation.dart';

class UserRepositoryImpl implements UserRepository {
  final MyInfoApi myInfoApi;

  UserRepositoryImpl({required this.myInfoApi});

  @override
  Future<MyInfoEntity?> getMyInfo() async {
    var result = await myInfoApi.getMyInfo();
    return result.on(
      success: (data) {
        return compute(
          (data) => MyInfoEntity.fromJson(data?.toJson() ?? {}),
          data,
        );
      },
      error: (error, stackTrace) {
        return null;
      },
    );
  }
}
