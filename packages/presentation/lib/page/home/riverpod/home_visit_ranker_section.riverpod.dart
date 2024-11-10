import 'package:domain/entity/visit_ranker.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:domain/usecase/home_view.usecase.dart';

part 'home_visit_ranker_section.riverpod.g.dart';

@riverpod
Future<List<VisitRankerEntity>> getVisitRanker(Ref ref) async {
  final usecase = GetIt.instance.get<HomeViewUsecase>();
  return await usecase.getVisitRanker() ?? [];
}

@riverpod
class RankerDetailClick extends _$RankerDetailClick {
  bool get isClicked => state;

  @override
  bool build(int index) => false;

  void click() {
    state = !state;
  }
}
