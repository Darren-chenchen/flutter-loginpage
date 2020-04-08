// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberRegisterResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberRegisterResponse _$MemberRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return MemberRegisterResponse(
    memberUuid: json['memberUuid'] as String,
    memberNum: json['memberNum'] as String,
    name: json['name'] as String,
    token: json['token'] as String,
    memberHeadImg: json['memberHeadImg'] as String,
    userId: json['userId'] as String,
    birthday: json['birthday'] as String,
    isEmployee: json['isEmployee'] as String,
    employeeDiscount: (json['employeeDiscount'] as num)?.toDouble(),
    discountRatio: (json['discountRatio'] as num)?.toDouble(),
    mobile: json['mobile'] as String,
    availableAmount: (json['availableAmount'] as num)?.toDouble(),
    scores: (json['scores'] as List)
        ?.map(
            (e) => e == null ? null : Score.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberRegisterResponseToJson(
        MemberRegisterResponse instance) =>
    <String, dynamic>{
      'memberUuid': instance.memberUuid,
      'memberNum': instance.memberNum,
      'name': instance.name,
      'birthday': instance.birthday,
      'isEmployee': instance.isEmployee,
      'employeeDiscount': instance.employeeDiscount,
      'discountRatio': instance.discountRatio,
      'availableAmount': instance.availableAmount,
      'mobile': instance.mobile,
      'userId': instance.userId,
      'token': instance.token,
      'memberHeadImg': instance.memberHeadImg,
      'scores': instance.scores,
    };
