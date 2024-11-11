// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_item.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreItemEntity _$StoreItemEntityFromJson(Map<String, dynamic> json) =>
    StoreItemEntity(
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$StoreItemEntityToJson(StoreItemEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'imgUrl': instance.imgUrl,
    };
