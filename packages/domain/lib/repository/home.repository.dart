import 'package:domain/entity/visit_ranker.entity.dart';

abstract class HomeRepository {
  Future<List<VisitRankerEntity>?> getVisitRanker();
}
