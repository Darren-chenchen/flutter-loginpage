// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartBalancePayRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartBalancePayRequest _$JxCartBalancePayRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartBalancePayRequest(
    cardNum: json['cardNum'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    balance: (json['balance'] as num)?.toDouble(),
    tranId: json['tranId'] as String,
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartBalancePayRequestToJson(
        JxCartBalancePayRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'cardNum': instance.cardNum,
      'amount': instance.amount,
      'balance': instance.balance,
      'tranId': instance.tranId,
    };
