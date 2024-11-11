// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryEntity _$StoreCategoryEntityFromJson(Map<String, dynamic> json) =>
    StoreCategoryEntity(
      category: json['category'] as String,
      icon: json['icon'] as String,
      store: (json['store'] as List<dynamic>)
          .map((e) =>
              StoreCategoryItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreCategoryEntityToJson(
        StoreCategoryEntity instance) =>
    <String, dynamic>{
      'category': instance.category,
      'icon': instance.icon,
      'store': instance.store,
    };
