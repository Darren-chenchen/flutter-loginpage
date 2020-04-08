// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BPaymentPrepare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPaymentPrepare _$BPaymentPrepareFromJson(Map<String, dynamic> json) {
  return BPaymentPrepare(
    payType: json['payType'] as String,
    tranId: json['tranId'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    terminalId: json['terminalId'] as String,
    terminalParams: json['terminalParams'] as String,
    returnUrl: json['returnUrl'] as String,
    mediumNumber: json['mediumNumber'] as String,
    clientIp: json['clientIp'] as String,
    payAppId: json['payAppId'] as String,
  );
}

Map<String, dynamic> _$BPaymentPrepareToJson(BPaymentPrepare instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'tranId': instance.tranId,
      'amount': instance.amount,
      'terminalId': instance.terminalId,
      'terminalParams': instance.terminalParams,
      'returnUrl': instance.returnUrl,
      'mediumNumber': instance.mediumNumber,
      'clientIp': instance.clientIp,
      'payAppId': instance.payAppId,
    };
