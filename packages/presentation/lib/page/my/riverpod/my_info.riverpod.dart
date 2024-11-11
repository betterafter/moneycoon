import 'package:domain/entity/my_info.entity.dart';
import 'package:domain/usecase/my_info.usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
Future<MyInfoEntity?> myInfo(Ref ref) async {
  final usecase = GetIt.instance.get<MyInfoUsecase>();
  return usecase.getMyInfo();
}
