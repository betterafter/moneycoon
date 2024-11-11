import 'package:json_annotation/json_annotation.dart';

part 'store_category_item.dto.g.dart';

@JsonSerializable()
class StoreCategoryItemDto {
  final String name;
  final String icon;

  StoreCategoryItemDto({
    required this.name,
    required this.icon,
  });

  factory StoreCategoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryItemDtoToJson(this);
}
