// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_item.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreItemDto _$StoreItemDtoFromJson(Map<String, dynamic> json) => StoreItemDto(
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$StoreItemDtoToJson(StoreItemDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'imgUrl': instance.imgUrl,
    };
