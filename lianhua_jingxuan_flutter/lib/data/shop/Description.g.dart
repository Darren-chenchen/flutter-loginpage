// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description()
    ..order = json['order'] as int
    ..type = json['type'] as String
    ..content = json['content'] as String;
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'order': instance.order,
      'type': instance.type,
      'content': instance.content,
    };
