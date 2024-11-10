import 'package:json_annotation/json_annotation.dart';

part 'my_info.dto.g.dart';

@JsonSerializable()
class MyInfoDto {
  @JsonKey(name: 'nickname')
  final String nickname;
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;
  @JsonKey(name: 'point')
  final int point;
  @JsonKey(name: 'total_donation_amount')
  final int totalDonationAmount;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'apply_list')
  final List<dynamic> applyList;
  @JsonKey(name: 'play_list')
  final List<dynamic> playList;
  @JsonKey(name: 'apply_success_list')
  final List<dynamic> applySuccessList;
  @JsonKey(name: 'play_success_list')
  final List<dynamic> playSuccessList;

  MyInfoDto({
    required this.nickname,
    required this.profileImageUrl,
    required this.point,
    required this.totalDonationAmount,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.applyList,
    required this.playList,
    required this.applySuccessList,
    required this.playSuccessList,
  });

  factory MyInfoDto.fromJson(Map<String, dynamic> json) =>
      _$MyInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MyInfoDtoToJson(this);
}
