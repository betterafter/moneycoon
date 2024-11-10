import 'package:domain/entity/home_banner.entity.dart';
import 'package:domain/entity/visit_ranker.entity.dart';

abstract class HomeRepository {
  Future<List<VisitRankerEntity>?> getVisitRanker();

  Future<List<HomeBannerEntity>?> getHomeBanner();
}
