// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentDetailData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDetailData _$ContentDetailDataFromJson(Map<String, dynamic> json) {
  return ContentDetailData(
    tenant: json['tenant'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
    placeId: json['placeId'] as String,
    placeNo: json['placeNo'] as int,
    countDown: json['countDown'] as bool,
    end: json['end'] as String,
    targetPage: json['targetPage'] as String,
    stayTime: json['stayTime'] as String,
    remark: json['remark'] as String,
    enabled: json['enabled'] as bool,
    content: json['content'] == null
        ? null
        : ContentDetailDataArg.fromJson(
            json['content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContentDetailDataToJson(ContentDetailData instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'placeId': instance.placeId,
      'placeNo': instance.placeNo,
      'countDown': instance.countDown,
      'end': instance.end,
      'targetPage': instance.targetPage,
      'stayTime': instance.stayTime,
      'remark': instance.remark,
      'enabled': instance.enabled,
      'content': instance.content,
    };
