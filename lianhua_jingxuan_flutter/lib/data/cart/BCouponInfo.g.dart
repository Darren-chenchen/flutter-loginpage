// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BCouponInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BCouponInfo _$BCouponInfoFromJson(Map<String, dynamic> json) {
  return BCouponInfo(
    code: json['code'] as String,
    name: json['name'] as String,
    typeCode: json['typeCode'] as String,
    typeName: json['typeName'] as String,
    faceValue: (json['faceValue'] as num)?.toDouble(),
    beginDate: json['beginDate'] as String,
    endDate: json['endDate'] as String,
    sendPlatformId: json['sendPlatformId'] as String,
    sendPlatformName: json['sendPlatformName'] as String,
    conditionValue: (json['conditionValue'] as num)?.toDouble(),
    settleType: json['settleType'] as int,
  );
}

Map<String, dynamic> _$BCouponInfoToJson(BCouponInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'faceValue': instance.faceValue,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'sendPlatformId': instance.sendPlatformId,
      'sendPlatformName': instance.sendPlatformName,
      'conditionValue': instance.conditionValue,
      'settleType': instance.settleType,
    };
