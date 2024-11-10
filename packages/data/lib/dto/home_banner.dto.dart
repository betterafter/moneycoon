import 'package:json_annotation/json_annotation.dart';

part 'home_banner.dto.g.dart';

@JsonSerializable()
class HomeBannerDto {
  final String imageUrl;

  HomeBannerDto({required this.imageUrl});

  factory HomeBannerDto.fromJson(Map<String, dynamic> json) {
    return HomeBannerDto(imageUrl: json['image_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
    };
  }
}
