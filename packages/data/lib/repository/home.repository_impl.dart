import 'package:data/api/home.api.dart';
import 'package:domain/entity/visit_ranker.entity.dart';
import 'package:domain/repository/home.repository.dart';
import 'package:flutter/foundation.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApi homeApi;

  HomeRepositoryImpl({required this.homeApi});

  @override
  Future<List<VisitRankerEntity>?> getVisitRanker() async {
    var result = await homeApi.getVisitRanker();
    return result.on(
      success: (data) {
        try {
          return compute(
            (data) => data
                ?.map((e) => VisitRankerEntity.fromJson(e.toJson()))
                .toList(),
            data,
          );
        } catch (e) {
          return null;
        }
      },
      error: (error, stackTrace) {
        return null;
      },
    );
  }
}
