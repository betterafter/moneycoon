import 'package:domain/entity/my_info.entity.dart';
import 'package:domain/repository/user.repository.dart';

class MyInfoUsecase {
  final UserRepository userRepository;

  MyInfoUsecase({required this.userRepository});

  Future<MyInfoEntity?> getMyInfo() async {
    return await userRepository.getMyInfo();
  }
}
