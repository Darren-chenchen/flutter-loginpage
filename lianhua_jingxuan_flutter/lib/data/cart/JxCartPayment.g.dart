// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartPayment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartPayment _$JxCartPaymentFromJson(Map<String, dynamic> json) {
  return JxCartPayment(
    payType: json['payType'] as String,
    faceAmount: (json['faceAmount'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    tranId: json['tranId'] as String,
    state: json['state'] as String,
  );
}

Map<String, dynamic> _$JxCartPaymentToJson(JxCartPayment instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'faceAmount': instance.faceAmount,
      'amount': instance.amount,
      'tranId': instance.tranId,
      'state': instance.state,
    };
