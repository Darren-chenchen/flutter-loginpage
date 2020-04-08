// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberAddressUpdateRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAddressUpdateRequest _$MemberAddressUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return MemberAddressUpdateRequest(
    address: json['address'] == null
        ? null
        : MemberAddress.fromJson(json['address'] as Map<String, dynamic>),
  )
    ..accountType = json['accountType'] as String
    ..accountCode = json['accountCode'] as String;
}

Map<String, dynamic> _$MemberAddressUpdateRequestToJson(
        MemberAddressUpdateRequest instance) =>
    <String, dynamic>{
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
      'address': instance.address,
    };
