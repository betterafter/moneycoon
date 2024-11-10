// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyInfoDto _$MyInfoDtoFromJson(Map<String, dynamic> json) => MyInfoDto(
      nickname: json['nickname'] as String,
      profileImageUrl: json['profile_image_url'] as String,
      point: (json['point'] as num).toInt(),
      totalDonationAmount: (json['total_donation_amount'] as num).toInt(),
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String,
      applyList: json['apply_list'] as List<dynamic>,
      playList: json['play_list'] as List<dynamic>,
      applySuccessList: json['apply_success_list'] as List<dynamic>,
      playSuccessList: json['play_success_list'] as List<dynamic>,
    );

Map<String, dynamic> _$MyInfoDtoToJson(MyInfoDto instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'profile_image_url': instance.profileImageUrl,
      'point': instance.point,
      'total_donation_amount': instance.totalDonationAmount,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'apply_list': instance.applyList,
      'play_list': instance.playList,
      'apply_success_list': instance.applySuccessList,
      'play_success_list': instance.playSuccessList,
    };
