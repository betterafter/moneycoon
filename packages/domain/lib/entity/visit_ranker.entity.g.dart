// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_ranker.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisitRankerEntity _$VisitRankerEntityFromJson(Map<String, dynamic> json) =>
    VisitRankerEntity(
      rank: json['rank'] as String,
      name: json['name'] as String,
      point: json['point'] as String,
      companionPoint: json['companion_point'] as String,
      missionPoint: json['mission_point'] as String,
    );

Map<String, dynamic> _$VisitRankerEntityToJson(VisitRankerEntity instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'name': instance.name,
      'point': instance.point,
      'companion_point': instance.companionPoint,
      'mission_point': instance.missionPoint,
    };
