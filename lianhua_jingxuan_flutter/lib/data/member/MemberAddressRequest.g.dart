// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberAddressRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAddressRequest _$MemberAddressRequestFromJson(Map<String, dynamic> json) {
  return MemberAddressRequest(
    accountType: json['accountType'] as String,
    accountCode: json['accountCode'] as String,
  );
}

Map<String, dynamic> _$MemberAddressRequestToJson(
        MemberAddressRequest instance) =>
    <String, dynamic>{
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
    };
