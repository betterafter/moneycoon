import 'package:json_annotation/json_annotation.dart';

part 'store_category_item.entity.g.dart';

@JsonSerializable()
class StoreCategoryItemEntity {
  final String name;
  final String title;
  final String icon;

  StoreCategoryItemEntity({
    required this.name,
    required this.title,
    required this.icon,
  });

  factory StoreCategoryItemEntity.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryItemEntityToJson(this);
}
