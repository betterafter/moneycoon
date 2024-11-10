import 'package:json_annotation/json_annotation.dart';

part 'visit_ranker.entity.g.dart';

@JsonSerializable()
class VisitRankerEntity {
  @JsonKey(name: 'rank')
  final String rank;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'point')
  final String point;
  @JsonKey(name: 'companion_point')
  final String companionPoint;
  @JsonKey(name: 'mission_point')
  final String missionPoint;

  VisitRankerEntity({
    required this.rank,
    required this.name,
    required this.point,
    required this.companionPoint,
    required this.missionPoint,
  });

  factory VisitRankerEntity.fromJson(Map<String, dynamic> json) =>
      _$VisitRankerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$VisitRankerEntityToJson(this);
}
