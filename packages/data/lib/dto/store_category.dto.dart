import 'package:json_annotation/json_annotation.dart';

import 'store_category_item.dto.dart';

part 'store_category.dto.g.dart';

@JsonSerializable()
class StoreCategoryDto {
  final String category;
  final String title;
  final String icon;
  final List<StoreCategoryItemDto> store;

  StoreCategoryDto({
    required this.category,
    required this.title,
    required this.icon,
    required this.store,
  });

  factory StoreCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryDtoToJson(this);
}
