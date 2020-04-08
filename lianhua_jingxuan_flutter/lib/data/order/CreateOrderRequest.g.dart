// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateOrderRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) {
  return CreateOrderRequest(
    uuid: json['uuid'] as String,
    memberId: json['memberId'] as String,
    type: json['type'] as String,
    lines: (json['lines'] as List)
        ?.map((e) =>
            e == null ? null : CodeQty.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    couponCodes:
        (json['couponCodes'] as List)?.map((e) => e as String)?.toList(),
    consignee: json['consignee'] == null
        ? null
        : BOrderConsignee.fromJson(json['consignee'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'memberId': instance.memberId,
      'type': instance.type,
      'lines': instance.lines,
      'couponCodes': instance.couponCodes,
      'consignee': instance.consignee,
    };
