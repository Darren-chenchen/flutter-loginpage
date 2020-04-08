// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CartSubmitRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartSubmitRequest _$CartSubmitRequestFromJson(Map<String, dynamic> json) {
  return CartSubmitRequest(
    consignee: json['consignee'] == null
        ? null
        : BOrderConsignee.fromJson(json['consignee'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CartSubmitRequestToJson(CartSubmitRequest instance) =>
    <String, dynamic>{
      'consignee': instance.consignee,
    };
