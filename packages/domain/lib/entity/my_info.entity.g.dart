// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyInfoEntity _$MyInfoEntityFromJson(Map<String, dynamic> json) => MyInfoEntity(
      nickname: json['nickname'] as String,
      profileImageUrl: json['profile_image_url'] as String,
      point: (json['point'] as num).toInt(),
      totalDonationAmount: (json['total_donation_amount'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      applyList: json['apply_list'] as List<dynamic>,
      playList: json['play_list'] as List<dynamic>,
      applySuccessList: json['apply_success_list'] as List<dynamic>,
      playSuccessList: json['play_success_list'] as List<dynamic>,
    );

Map<String, dynamic> _$MyInfoEntityToJson(MyInfoEntity instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'profile_image_url': instance.profileImageUrl,
      'point': instance.point,
      'total_donation_amount': instance.totalDonationAmount,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'apply_list': instance.applyList,
      'play_list': instance.playList,
      'apply_success_list': instance.applySuccessList,
      'play_success_list': instance.playSuccessList,
    };
