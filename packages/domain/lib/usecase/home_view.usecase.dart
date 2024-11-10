import 'package:domain/entity/home_banner.entity.dart';
import 'package:domain/entity/visit_ranker.entity.dart';
import 'package:domain/repository/home.repository.dart';

class HomeViewUsecase {
  final HomeRepository homeRepository;

  HomeViewUsecase({required this.homeRepository});

  Future<List<VisitRankerEntity>?> getVisitRanker() async {
    return homeRepository.getVisitRanker();
  }

  Future<List<HomeBannerEntity>?> getHomeBanner() async {
    return homeRepository.getHomeBanner();
  }
}
