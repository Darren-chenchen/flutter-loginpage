// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberCardAndBalanceRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberCardAndBalanceRequest _$MemberCardAndBalanceRequestFromJson(
    Map<String, dynamic> json) {
  return MemberCardAndBalanceRequest(
    terminal: json['terminal'] as String,
    storeCode: json['storeCode'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
  );
}

Map<String, dynamic> _$MemberCardAndBalanceRequestToJson(
        MemberCardAndBalanceRequest instance) =>
    <String, dynamic>{
      'terminal': instance.terminal,
      'storeCode': instance.storeCode,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
    };
