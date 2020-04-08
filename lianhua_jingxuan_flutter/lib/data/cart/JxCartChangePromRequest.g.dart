// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartChangePromRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartChangePromRequest _$JxCartChangePromRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartChangePromRequest(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : UuidProm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartChangePromRequestToJson(
        JxCartChangePromRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'items': instance.items,
    };
