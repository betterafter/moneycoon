// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category_item.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryItemDto _$StoreCategoryItemDtoFromJson(
        Map<String, dynamic> json) =>
    StoreCategoryItemDto(
      name: json['name'] as String,
      title: json['title'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$StoreCategoryItemDtoToJson(
        StoreCategoryItemDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'icon': instance.icon,
    };
