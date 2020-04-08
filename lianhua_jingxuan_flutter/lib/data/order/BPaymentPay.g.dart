// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BPaymentPay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPaymentPay _$BPaymentPayFromJson(Map<String, dynamic> json) {
  return BPaymentPay(
    orderId: json['orderId'] as String,
    tranId: json['tranId'] as String,
    balance: (json['balance'] as num)?.toDouble(),
    payUrl: json['payUrl'] as String,
    payNo: json['payNo'] as String,
    payState: json['payState'] as int,
    payMessage: json['payMessage'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    payAmount: (json['payAmount'] as num)?.toDouble(),
    payInfo: json['payInfo'] as String,
    preOrderId: json['preOrderId'] as String,
    favAmount: (json['favAmount'] as num)?.toDouble(),
    favAmountChannel: (json['favAmountChannel'] as num)?.toDouble(),
    favAmountMerchant: (json['favAmountMerchant'] as num)?.toDouble(),
    account: json['account'] as String,
    printInfo: json['printInfo'] as String,
  );
}

Map<String, dynamic> _$BPaymentPayToJson(BPaymentPay instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tranId': instance.tranId,
      'balance': instance.balance,
      'payUrl': instance.payUrl,
      'payNo': instance.payNo,
      'payState': instance.payState,
      'payMessage': instance.payMessage,
      'amount': instance.amount,
      'payAmount': instance.payAmount,
      'payInfo': instance.payInfo,
      'preOrderId': instance.preOrderId,
      'favAmount': instance.favAmount,
      'favAmountChannel': instance.favAmountChannel,
      'favAmountMerchant': instance.favAmountMerchant,
      'account': instance.account,
      'printInfo': instance.printInfo,
    };
