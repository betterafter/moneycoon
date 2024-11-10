import 'package:data/api/home.api.dart';
import 'package:data/repository/home.repository_impl.dart';
import 'package:domain/repository/home.repository.dart';
import 'package:domain/usecase/home_view.usecase.dart';
import 'package:get_it/get_it.dart';

class Di {
  static var di = GetIt.instance;

  static void initializeApp() {
    // api
    di.registerFactory<HomeApi>(() => HomeApi());

    // repository
    di.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(homeApi: di()),
    );

    // usecase
    di.registerFactory<HomeViewUsecase>(
      () => HomeViewUsecase(homeRepository: di()),
    );

    // bloc
  }

  GetIt get() => di();
}
