// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BPaymentQuery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPaymentQuery _$BPaymentQueryFromJson(Map<String, dynamic> json) {
  return BPaymentQuery(
    payType: json['payType'] as String,
    tranId: json['tranId'] as String,
  );
}

Map<String, dynamic> _$BPaymentQueryToJson(BPaymentQuery instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'tranId': instance.tranId,
    };
