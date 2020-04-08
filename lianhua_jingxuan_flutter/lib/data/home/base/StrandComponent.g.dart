// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StrandComponent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrandComponent _$StrandComponentFromJson(Map<String, dynamic> json) {
  return StrandComponent(
    name: json['name'] as String,
    storeIds: json['storeIds'] as String,
    begin: json['begin'] as String,
    end: json['end'] as String,
    marginBottom: json['marginBottom'] as int,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$StrandComponentToJson(StrandComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
    };
