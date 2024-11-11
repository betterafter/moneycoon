// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryDto _$StoreCategoryDtoFromJson(Map<String, dynamic> json) =>
    StoreCategoryDto(
      category: json['category'] as String,
      icon: json['icon'] as String,
      store: (json['store'] as List<dynamic>)
          .map((e) => StoreCategoryItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreCategoryDtoToJson(StoreCategoryDto instance) =>
    <String, dynamic>{
      'category': instance.category,
      'icon': instance.icon,
      'store': instance.store,
    };
