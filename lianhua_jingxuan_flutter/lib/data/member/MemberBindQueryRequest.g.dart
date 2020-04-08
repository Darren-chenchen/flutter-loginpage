// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberBindQueryRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberBindQueryRequest _$MemberBindQueryRequestFromJson(
    Map<String, dynamic> json) {
  return MemberBindQueryRequest(
    tranTime: json['tranTime'] as String,
    terminal: json['terminal'] as String,
    storeCode: json['storeCode'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
    channelType: json['channelType'] as String,
    uid: json['uid'] as String,
    cardType: json['cardType'] as String,
  );
}

Map<String, dynamic> _$MemberBindQueryRequestToJson(
        MemberBindQueryRequest instance) =>
    <String, dynamic>{
      'tranTime': instance.tranTime,
      'terminal': instance.terminal,
      'storeCode': instance.storeCode,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
      'channelType': instance.channelType,
      'uid': instance.uid,
      'cardType': instance.cardType,
    };
