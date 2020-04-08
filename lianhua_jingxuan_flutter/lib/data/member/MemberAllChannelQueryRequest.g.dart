// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberAllChannelQueryRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAllChannelQueryRequest _$MemberAllChannelQueryRequestFromJson(
    Map<String, dynamic> json) {
  return MemberAllChannelQueryRequest(
    tranTime: json['tranTime'] as String,
    terminal: json['terminal'] as String,
    storeCode: json['storeCode'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
    channelType: json['channelType'] as String,
  );
}

Map<String, dynamic> _$MemberAllChannelQueryRequestToJson(
        MemberAllChannelQueryRequest instance) =>
    <String, dynamic>{
      'tranTime': instance.tranTime,
      'terminal': instance.terminal,
      'storeCode': instance.storeCode,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
      'channelType': instance.channelType,
    };
