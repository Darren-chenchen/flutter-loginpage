// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ActiviteComponent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiviteComponent _$ActiviteComponentFromJson(Map<String, dynamic> json) {
  return ActiviteComponent(
    name: json['name'] as String,
    id: json['id'] as String,
    type: json['type'] as String,
    components: json['components'] == null
        ? null
        : JXComponents.fromJson(json['components'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActiviteComponentToJson(ActiviteComponent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'components': instance.components,
    };
