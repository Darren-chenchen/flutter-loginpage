// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberScoreHstQueryRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberScoreHstQueryRequest _$MemberScoreHstQueryRequestFromJson(
    Map<String, dynamic> json) {
  return MemberScoreHstQueryRequest(
    tranTime: json['tranTime'] as String,
    terminal: json['terminal'] as String,
    storeCode: json['storeCode'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
    pageSize: json['pageSize'] as int,
    pageNum: json['pageNum'] as int,
  );
}

Map<String, dynamic> _$MemberScoreHstQueryRequestToJson(
        MemberScoreHstQueryRequest instance) =>
    <String, dynamic>{
      'tranTime': instance.tranTime,
      'terminal': instance.terminal,
      'storeCode': instance.storeCode,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
      'pageSize': instance.pageSize,
      'pageNum': instance.pageNum,
    };
