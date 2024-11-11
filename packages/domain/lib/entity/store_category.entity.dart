import 'package:json_annotation/json_annotation.dart';

part 'store_category.entity.g.dart';

@JsonSerializable()
class StoreCategoryEntity {
  final String category;
  final List<String> store;

  StoreCategoryEntity({
    required this.category,
    required this.store,
  });

  factory StoreCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$StoreCategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCategoryEntityToJson(this);
}
