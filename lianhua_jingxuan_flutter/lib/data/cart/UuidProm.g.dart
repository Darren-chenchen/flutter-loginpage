// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UuidProm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UuidProm _$UuidPromFromJson(Map<String, dynamic> json) {
  return UuidProm(
    uuid: json['uuid'] as String,
    skuActivity: json['skuActivity'] as bool,
    activityId: json['activityId'] as String,
  );
}

Map<String, dynamic> _$UuidPromToJson(UuidProm instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'skuActivity': instance.skuActivity,
      'activityId': instance.activityId,
    };
