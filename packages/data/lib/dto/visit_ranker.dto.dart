import 'package:json_annotation/json_annotation.dart';

part 'visit_ranker.dto.g.dart';

@JsonSerializable()
class VisitRankerDto {
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

  VisitRankerDto({
    required this.rank,
    required this.name,
    required this.point,
    required this.companionPoint,
    required this.missionPoint,
  });

  factory VisitRankerDto.fromJson(Map<String, dynamic> json) =>
      _$VisitRankerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VisitRankerDtoToJson(this);
}
