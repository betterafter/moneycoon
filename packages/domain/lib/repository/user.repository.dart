import 'package:domain/entity/my_info.entity.dart';

abstract class UserRepository {
  Future<MyInfoEntity?> getMyInfo();
}
