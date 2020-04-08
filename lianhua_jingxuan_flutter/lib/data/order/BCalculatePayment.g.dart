// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BCalculatePayment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BCalculatePayment _$BCalculatePaymentFromJson(Map<String, dynamic> json) {
  return BCalculatePayment(
    payType: json['payType'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    balance: (json['balance'] as num)?.toDouble(),
    account: json['account'] as String,
  );
}

Map<String, dynamic> _$BCalculatePaymentToJson(BCalculatePayment instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'amount': instance.amount,
      'balance': instance.balance,
      'account': instance.account,
    };
