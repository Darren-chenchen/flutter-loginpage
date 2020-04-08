// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeliveryTypeShops.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryTypeShops _$DeliveryTypeShopsFromJson(Map<String, dynamic> json) {
  return DeliveryTypeShops()
    ..oneHourShops = (json['oneHourShops'] as List)
        ?.map(
            (e) => e == null ? null : Shop.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..selfTakeShops = (json['selfTakeShops'] as List)
        ?.map(
            (e) => e == null ? null : Shop.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DeliveryTypeShopsToJson(DeliveryTypeShops instance) =>
    <String, dynamic>{
      'oneHourShops': instance.oneHourShops,
      'selfTakeShops': instance.selfTakeShops,
    };
