import 'package:json_annotation/json_annotation.dart';

part 'my_info.entity.g.dart';

@JsonSerializable()
class MyInfoEntity {
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
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'apply_list')
  final List<dynamic> applyList;
  @JsonKey(name: 'play_list')
  final List<dynamic> playList;
  @JsonKey(name: 'apply_success_list')
  final List<dynamic> applySuccessList;
  @JsonKey(name: 'play_success_list')
  final List<dynamic> playSuccessList;

  MyInfoEntity({
    required this.nickname,
    required this.profileImageUrl,
    required this.point,
    required this.totalDonationAmount,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.applyList,
    required this.playList,
    required this.applySuccessList,
    required this.playSuccessList,
  });

  factory MyInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$MyInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MyInfoEntityToJson(this);
}
