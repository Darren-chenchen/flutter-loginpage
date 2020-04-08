// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ThreeColumnCoupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThreeColumnCoupon _$ThreeColumnCouponFromJson(Map<String, dynamic> json) {
  return ThreeColumnCoupon(
    skuTitleColor: json['skuTitleColor'] as String,
    style: json['style'] as String,
    displayColor: json['displayColor'] as String,
    listBackgroundColor: json['listBackgroundColor'] as String,
    skuSubtitleColor: json['skuSubtitleColor'] as String,
    buttonBackgroundColor: json['buttonBackgroundColor'] as String,
    buttonTextColor: json['buttonTextColor'] as String,
    showMessage:
        (json['showMessage'] as List)?.map((e) => e as String)?.toList(),
    couponIds: (json['couponIds'] as List)?.map((e) => e as String)?.toList(),
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$ThreeColumnCouponToJson(ThreeColumnCoupon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'skuTitleColor': instance.skuTitleColor,
      'style': instance.style,
      'displayColor': instance.displayColor,
      'listBackgroundColor': instance.listBackgroundColor,
      'skuSubtitleColor': instance.skuSubtitleColor,
      'buttonBackgroundColor': instance.buttonBackgroundColor,
      'buttonTextColor': instance.buttonTextColor,
      'showMessage': instance.showMessage,
      'couponIds': instance.couponIds,
    };
