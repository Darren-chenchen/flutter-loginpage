// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartAddCardRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartAddCardRequest _$JxCartAddCardRequestFromJson(Map<String, dynamic> json) {
  return JxCartAddCardRequest(
    cardNum: json['cardNum'] as String,
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartAddCardRequestToJson(
        JxCartAddCardRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'cardNum': instance.cardNum,
    };
