// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Text _$TextFromJson(Map<String, dynamic> json) {
  return Text(
    text: json['text'] as String,
    fontSize: json['fontSize'] as String,
    fontColor: json['fontColor'] as String,
    textAlign: json['textAlign'] as String,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$TextToJson(Text instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'text': instance.text,
      'fontSize': instance.fontSize,
      'fontColor': instance.fontColor,
      'textAlign': instance.textAlign,
    };
