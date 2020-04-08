// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BPaymentSubmit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPaymentSubmit _$BPaymentSubmitFromJson(Map<String, dynamic> json) {
  return BPaymentSubmit(
    payType: json['payType'] as String,
    tranId: json['tranId'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    payCode: json['payCode'] as String,
    cardNumber: json['cardNumber'] as String,
    password: json['password'] as String,
    terminalId: json['terminalId'] as String,
    terminalParams: json['terminalParams'] as String,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$BPaymentSubmitToJson(BPaymentSubmit instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'tranId': instance.tranId,
      'amount': instance.amount,
      'payCode': instance.payCode,
      'cardNumber': instance.cardNumber,
      'password': instance.password,
      'terminalId': instance.terminalId,
      'terminalParams': instance.terminalParams,
      'userId': instance.userId,
    };
