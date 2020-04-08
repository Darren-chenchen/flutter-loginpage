// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberCardAndBalanceResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberCardAndBalanceResponse _$MemberCardAndBalanceResponseFromJson(
    Map<String, dynamic> json) {
  return MemberCardAndBalanceResponse(
    balance: (json['balance'] as num)?.toDouble(),
    physicalCardNum: json['physicalCardNum'] as String,
  );
}

Map<String, dynamic> _$MemberCardAndBalanceResponseToJson(
        MemberCardAndBalanceResponse instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'physicalCardNum': instance.physicalCardNum,
    };
