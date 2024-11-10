import 'package:data/api/home.api.dart';
import 'package:data/api/my_info.api.dart';
import 'package:data/repository/home.repository_impl.dart';
import 'package:data/repository/user.repository_impl.dart';
import 'package:domain/repository/home.repository.dart';
import 'package:domain/repository/user.repository.dart';
import 'package:domain/usecase/home_view.usecase.dart';
import 'package:domain/usecase/my_info.usecase.dart';
import 'package:get_it/get_it.dart';

class Di {
  static var di = GetIt.instance;

  static void initializeApp() {
    // api
    di.registerFactory<HomeApi>(() => HomeApi());
    di.registerFactory<MyInfoApi>(() => MyInfoApi());

    // repository
    di.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(homeApi: di()),
    );
    di.registerFactory<UserRepository>(
      () => UserRepositoryImpl(myInfoApi: di()),
    );

    // usecase
    di.registerFactory<HomeViewUsecase>(
      () => HomeViewUsecase(homeRepository: di()),
    );
    di.registerFactory<MyInfoUsecase>(
      () => MyInfoUsecase(userRepository: di()),
    );

    // bloc
  }

  GetIt get() => di();
}
