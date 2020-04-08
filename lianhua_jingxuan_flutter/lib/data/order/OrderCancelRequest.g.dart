// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderCancelRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCancelRequest _$OrderCancelRequestFromJson(Map<String, dynamic> json) {
  return OrderCancelRequest(
    reason: json['reason'] as String,
  );
}

Map<String, dynamic> _$OrderCancelRequestToJson(OrderCancelRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };
