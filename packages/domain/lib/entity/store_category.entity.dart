import 'package:domain/entity/store_category_item.entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_category.entity.g.dart';

@JsonSerializable()
class StoreCategoryEntity {
  final String category;
  final String icon;
  final List<StoreCategoryItemEntity> store;

  StoreCategoryEntity({
    required this.category,
    required this.icon,
    required this.store,
  });

  factory StoreCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryEntityToJson(this);
}
