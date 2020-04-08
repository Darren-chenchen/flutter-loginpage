// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Global _$GlobalFromJson(Map<String, dynamic> json) {
  return Global(
    title: json['title'] as String,
    bgColor: json['bgColor'] as String,
    showTop: json['showTop'] as bool,
    showCart: json['showCart'] as bool,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$GlobalToJson(Global instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'bgColor': instance.bgColor,
      'showTop': instance.showTop,
      'showCart': instance.showCart,
    };
