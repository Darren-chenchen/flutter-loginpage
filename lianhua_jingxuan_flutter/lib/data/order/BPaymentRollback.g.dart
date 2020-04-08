// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BPaymentRollback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPaymentRollback _$BPaymentRollbackFromJson(Map<String, dynamic> json) {
  return BPaymentRollback(
    payType: json['payType'] as String,
    tranId: json['tranId'] as String,
  );
}

Map<String, dynamic> _$BPaymentRollbackToJson(BPaymentRollback instance) =>
    <String, dynamic>{
      'payType': instance.payType,
      'tranId': instance.tranId,
    };
