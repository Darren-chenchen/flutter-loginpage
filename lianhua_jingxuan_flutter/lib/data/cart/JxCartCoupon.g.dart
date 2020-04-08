// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartCoupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartCoupon _$JxCartCouponFromJson(Map<String, dynamic> json) {
  return JxCartCoupon(
    code: json['code'] as String,
    paidAmount: (json['paidAmount'] as num)?.toDouble(),
    name: json['name'] as String,
    typeCode: json['typeCode'] as String,
    typeName: json['typeName'] as String,
    used: json['used'] as bool,
    faceValue: (json['faceValue'] as num)?.toDouble(),
    beginDate: json['beginDate'] as String,
    endDate: json['endDate'] as String,
    sendPlatformId: json['sendPlatformId'] as String,
    sendPlatformName: json['sendPlatformName'] as String,
    conditionValue: (json['conditionValue'] as num)?.toDouble(),
    settleType: json['settleType'] as int,
  );
}

Map<String, dynamic> _$JxCartCouponToJson(JxCartCoupon instance) =>
    <String, dynamic>{
      'code': instance.code,
      'paidAmount': instance.paidAmount,
      'name': instance.name,
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'used': instance.used,
      'faceValue': instance.faceValue,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'sendPlatformId': instance.sendPlatformId,
      'sendPlatformName': instance.sendPlatformName,
      'conditionValue': instance.conditionValue,
      'settleType': instance.settleType,
    };
