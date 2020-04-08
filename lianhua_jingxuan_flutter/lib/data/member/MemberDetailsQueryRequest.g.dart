// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberDetailsQueryRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberDetailsQueryRequest _$MemberDetailsQueryRequestFromJson(
    Map<String, dynamic> json) {
  return MemberDetailsQueryRequest(
    tranTime: json['tranTime'] as String,
    terminal: json['terminal'] as String,
    storeCode: json['storeCode'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
  );
}

Map<String, dynamic> _$MemberDetailsQueryRequestToJson(
        MemberDetailsQueryRequest instance) =>
    <String, dynamic>{
      'tranTime': instance.tranTime,
      'terminal': instance.terminal,
      'storeCode': instance.storeCode,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
    };
