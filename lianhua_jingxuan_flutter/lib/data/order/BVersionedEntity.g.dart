// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BVersionedEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BVersionedEntity _$BVersionedEntityFromJson(Map<String, dynamic> json) {
  return BVersionedEntity(
    version: json['version'] as int,
    versionTime: json['versionTime'] as String,
  );
}

Map<String, dynamic> _$BVersionedEntityToJson(BVersionedEntity instance) =>
    <String, dynamic>{
      'version': instance.version,
      'versionTime': instance.versionTime,
    };
