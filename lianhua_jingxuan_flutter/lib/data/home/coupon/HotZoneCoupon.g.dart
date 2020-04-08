// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HotZoneCoupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotZoneCoupon _$HotZoneCouponFromJson(Map<String, dynamic> json) {
  return HotZoneCoupon(
    title: json['title'] as String,
    imageUrl: json['imageUrl'] as String,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$HotZoneCouponToJson(HotZoneCoupon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };
