// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartAddCouponRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartAddCouponRequest _$JxCartAddCouponRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartAddCouponRequest(
    codes: (json['codes'] as List)?.map((e) => e as String)?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartAddCouponRequestToJson(
        JxCartAddCouponRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'codes': instance.codes,
    };
