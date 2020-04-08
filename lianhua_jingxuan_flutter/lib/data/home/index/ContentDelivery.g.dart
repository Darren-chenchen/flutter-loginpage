// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContentDelivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDelivery _$ContentDeliveryFromJson(Map<String, dynamic> json) {
  return ContentDelivery(
    tenant: json['tenant'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
    placeCode: json['placeCode'] as String,
    placeNo: json['placeNo'] as int,
    cycle: json['cycle'] as bool,
    cycleConditions: (json['cycleConditions'] as List)
        ?.map((e) => e == null
            ? null
            : ContentDeliveryCycleCondition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    begin: json['begin'] as String,
    end: json['end'] as String,
    content: json['content'] as String,
    key: json['key'] as String,
    stayTime: json['stayTime'] as int,
    remark: json['remark'] as String,
    targetType: json['targetType'] as String,
    targets: (json['targets'] as List)?.map((e) => e as String)?.toList(),
    enabled: json['enabled'] as bool,
  );
}

Map<String, dynamic> _$ContentDeliveryToJson(ContentDelivery instance) =>
    <String, dynamic>{
      'tenant': instance.tenant,
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'placeCode': instance.placeCode,
      'placeNo': instance.placeNo,
      'cycle': instance.cycle,
      'cycleConditions': instance.cycleConditions,
      'begin': instance.begin,
      'end': instance.end,
      'content': instance.content,
      'key': instance.key,
      'stayTime': instance.stayTime,
      'remark': instance.remark,
      'targetType': instance.targetType,
      'targets': instance.targets,
      'enabled': instance.enabled,
    };
