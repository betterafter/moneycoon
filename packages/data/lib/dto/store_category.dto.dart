import 'package:json_annotation/json_annotation.dart';

part 'store_category.dto.g.dart';

@JsonSerializable()
class StoreCategoryDto {
  final String category;
  final List<String> store;

  StoreCategoryDto({
    required this.category,
    required this.store,
  });

  factory StoreCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryDtoToJson(this);
}
