// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderMemberInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderMemberInfo _$BOrderMemberInfoFromJson(Map<String, dynamic> json) {
  return BOrderMemberInfo(
    codeType: json['codeType'] == null
        ? null
        : CodeType.fromJson(json['codeType'] as Map<String, dynamic>),
    memberTel: json['memberTel'] as String,
    mobile: json['mobile'] as String,
    memberCode: json['memberCode'] as String,
    memberName: json['memberName'] as String,
    memberGrade: json['memberGrade'] as String,
    birthday: json['birthday'] as String,
    balance: (json['balance'] as num)?.toDouble(),
    memberScore: (json['memberScore'] as num)?.toDouble(),
    memberId: json['memberId'] as String,
    cardNum: json['cardNum'] as String,
  );
}

Map<String, dynamic> _$BOrderMemberInfoToJson(BOrderMemberInfo instance) =>
    <String, dynamic>{
      'codeType': instance.codeType,
      'memberTel': instance.memberTel,
      'mobile': instance.mobile,
      'memberCode': instance.memberCode,
      'memberName': instance.memberName,
      'memberGrade': instance.memberGrade,
      'birthday': instance.birthday,
      'balance': instance.balance,
      'memberScore': instance.memberScore,
      'memberId': instance.memberId,
      'cardNum': instance.cardNum,
    };
