import 'package:json_annotation/json_annotation.dart';

part 'store_item.dto.g.dart';

@JsonSerializable()
class StoreItemDto {
  final String name;
  final int price;
  final String imgUrl;

  StoreItemDto({
    required this.name,
    required this.price,
    required this.imgUrl,
  });

  factory StoreItemDto.fromJson(Map<String, dynamic> json) =>
      _$StoreItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StoreItemDtoToJson(this);
}
