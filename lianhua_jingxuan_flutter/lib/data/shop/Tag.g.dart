// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag()
    ..name = json['name'] as String
    ..color = json['color'] as String;
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };
