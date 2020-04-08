// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartSelectRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartSelectRequest _$JxCartSelectRequestFromJson(Map<String, dynamic> json) {
  return JxCartSelectRequest(
    uuids: (json['uuids'] as List)?.map((e) => e as String)?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartSelectRequestToJson(
        JxCartSelectRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'uuids': instance.uuids,
    };
