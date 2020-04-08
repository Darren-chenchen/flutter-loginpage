// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ActiviteContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiviteContent _$ActiviteContentFromJson(Map<String, dynamic> json) {
  return ActiviteContent(
    component: json['component'] == null
        ? null
        : ActiviteCommonComponent.fromJson(
            json['component'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActiviteContentToJson(ActiviteContent instance) =>
    <String, dynamic>{
      'component': instance.component,
    };
