// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartSetCouponRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartSetCouponRequest _$JxCartSetCouponRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartSetCouponRequest(
    codes: (json['codes'] as List)?.map((e) => e as String)?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartSetCouponRequestToJson(
        JxCartSetCouponRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'codes': instance.codes,
    };
