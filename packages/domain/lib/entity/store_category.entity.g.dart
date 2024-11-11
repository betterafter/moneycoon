// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryEntity _$StoreCategoryEntityFromJson(Map<String, dynamic> json) =>
    StoreCategoryEntity(
      category: json['category'] as String,
      store: (json['store'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$StoreCategoryEntityToJson(
        StoreCategoryEntity instance) =>
    <String, dynamic>{
      'category': instance.category,
      'store': instance.store,
    };
