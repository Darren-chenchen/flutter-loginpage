// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JXComponents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JXComponents _$JXComponentsFromJson(Map<String, dynamic> json) {
  return JXComponents(
    component: json['component'] == null
        ? null
        : Global.fromJson(json['component'] as Map<String, dynamic>),
    widgets: (json['widgets'] as List)
        ?.map((e) => e == null
            ? null
            : ActiviteContent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$JXComponentsToJson(JXComponents instance) =>
    <String, dynamic>{
      'component': instance.component,
      'widgets': instance.widgets,
    };
