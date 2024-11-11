import 'package:json_annotation/json_annotation.dart';

part 'store_item.entity.g.dart';

@JsonSerializable()
class StoreItemEntity {
  final String name;
  final int price;
  final String imgUrl;

  StoreItemEntity({
    required this.name,
    required this.price,
    required this.imgUrl,
  });

  factory StoreItemEntity.fromJson(Map<String, dynamic> json) =>
      _$StoreItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StoreItemEntityToJson(this);
}
