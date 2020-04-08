// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentTemplate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTemplate _$ContentTemplateFromJson(Map<String, dynamic> json) {
  return ContentTemplate(
    tenant: json['tenant'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
    placeCode: json['placeCode'] as String,
    placeName: json['placeName'] as String,
    remark: json['remark'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$ContentTemplateToJson(ContentTemplate instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'placeCode': instance.placeCode,
      'placeName': instance.placeName,
      'remark': instance.remark,
      'content': instance.content,
    };
