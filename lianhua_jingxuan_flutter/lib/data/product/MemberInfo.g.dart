// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberInfo _$MemberInfoFromJson(Map<String, dynamic> json) {
  return MemberInfo(
    memberId: json['memberId'] as String,
    memberCardType: json['memberCardType'] as String,
    memberCardNumber: json['memberCardNumber'] as String,
    memberGrade: json['memberGrade'] as String,
    cardFunction: json['cardFunction'] as String,
    sex: json['sex'] as int,
    birthday: json['birthday'] as String,
  );
}

Map<String, dynamic> _$MemberInfoToJson(MemberInfo instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'memberCardType': instance.memberCardType,
      'memberCardNumber': instance.memberCardNumber,
      'memberGrade': instance.memberGrade,
      'cardFunction': instance.cardFunction,
      'sex': instance.sex,
      'birthday': instance.birthday,
    };
