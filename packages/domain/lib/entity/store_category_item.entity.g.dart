// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category_item.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCategoryItemEntity _$StoreCategoryItemEntityFromJson(
        Map<String, dynamic> json) =>
    StoreCategoryItemEntity(
      name: json['name'] as String,
      title: json['title'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$StoreCategoryItemEntityToJson(
        StoreCategoryItemEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'icon': instance.icon,
    };
