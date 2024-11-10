import 'package:json_annotation/json_annotation.dart';

part 'home_banner.entity.g.dart';

@JsonSerializable()
class HomeBannerEntity {
  final String imageUrl;

  HomeBannerEntity({required this.imageUrl});

  factory HomeBannerEntity.fromJson(Map<String, dynamic> json) {
    return HomeBannerEntity(imageUrl: json['image_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
    };
  }
}
