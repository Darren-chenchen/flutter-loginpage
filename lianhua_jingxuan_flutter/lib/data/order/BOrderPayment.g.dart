// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderPayment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderPayment _$BOrderPaymentFromJson(Map<String, dynamic> json) {
  return BOrderPayment(
    payType: json['payType'] as String,
    account: json['account'] as String,
    faceAmount: (json['faceAmount'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    favAmount: (json['favAmount'] as num)?.toDouble(),
    payMethodCode: json['payMethodCode'] as String,
    payMethodName: json['payMethodName'] as String,
    payNo: json['payNo'] as String,
    orderNumber: json['orderNumber'] as String,
    tranId: json['tranId'] as String,
    response: json['response'] as String,
    score: (json['score'] as num)?.toDouble(),
    state: json['state'] as String,
  );
}

Map<String, dynamic> _$BOrderPaymentToJson(BOrderPayment instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'account': instance.account,
      'faceAmount': instance.faceAmount,
      'amount': instance.amount,
      'favAmount': instance.favAmount,
      'payMethodCode': instance.payMethodCode,
      'payMethodName': instance.payMethodName,
      'payNo': instance.payNo,
      'orderNumber': instance.orderNumber,
      'tranId': instance.tranId,
      'response': instance.response,
      'score': instance.score,
      'state': instance.state,
    };
