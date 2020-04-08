// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentPlace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentPlace _$ContentPlaceFromJson(Map<String, dynamic> json) {
  return ContentPlace(
    tenant: json['tenant'] as String,
    id: json['id'] as String,
    channel: json['channel'] as String,
    code: json['code'] as String,
    imageUrl: json['imageUrl'] as String,
    name: json['name'] as String,
    orderNo: json['orderNo'] as int,
  );
}

Map<String, dynamic> _$ContentPlaceToJson(ContentPlace instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'id': instance.id,
      'channel': instance.channel,
      'code': instance.code,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'orderNo': instance.orderNo,
    };
