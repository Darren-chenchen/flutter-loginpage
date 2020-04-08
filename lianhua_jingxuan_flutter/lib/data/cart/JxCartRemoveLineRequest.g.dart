// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartRemoveLineRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartRemoveLineRequest _$JxCartRemoveLineRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartRemoveLineRequest(
    uuids: (json['uuids'] as List)?.map((e) => e as String)?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartRemoveLineRequestToJson(
        JxCartRemoveLineRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'uuids': instance.uuids,
    };
