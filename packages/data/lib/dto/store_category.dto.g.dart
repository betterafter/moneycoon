// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryDto _$StoreCategoryDtoFromJson(Map<String, dynamic> json) =>
    StoreCategoryDto(
      category: json['category'] as String,
      store: (json['store'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$StoreCategoryDtoToJson(StoreCategoryDto instance) =>
    <String, dynamic>{
      'category': instance.category,
      'store': instance.store,
    };
