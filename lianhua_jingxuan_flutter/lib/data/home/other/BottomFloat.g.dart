// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BottomFloat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BottomFloat _$BottomFloatFromJson(Map<String, dynamic> json) {
  return BottomFloat(
    imageUrl: json['imageUrl'] as String,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$BottomFloatToJson(BottomFloat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
    };
