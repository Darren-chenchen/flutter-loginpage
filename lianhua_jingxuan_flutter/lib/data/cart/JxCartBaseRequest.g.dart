// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartBaseRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartBaseRequest _$JxCartBaseRequestFromJson(Map<String, dynamic> json) {
  return JxCartBaseRequest(
    memberId: json['memberId'] as String,
    isTemp: json['isTemp'] as bool,
  );
}

Map<String, dynamic> _$JxCartBaseRequestToJson(JxCartBaseRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
    };
