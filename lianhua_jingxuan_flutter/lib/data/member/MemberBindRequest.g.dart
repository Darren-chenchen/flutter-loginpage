// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberBindRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberBindRequest _$MemberBindRequestFromJson(Map<String, dynamic> json) {
  return MemberBindRequest(
    tranId: json['tranId'] as String,
    tranTime: json['tranTime'] as String,
    channelType: json['channelType'] as String,
    uid: json['uid'] as String,
    accounts: (json['accounts'] as List)
        ?.map((e) =>
            e == null ? null : Account.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberBindRequestToJson(MemberBindRequest instance) =>
    <String, dynamic>{
      'tranId': instance.tranId,
      'tranTime': instance.tranTime,
      'channelType': instance.channelType,
      'uid': instance.uid,
      'accounts': instance.accounts,
    };
