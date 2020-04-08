// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberRegisterRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberRegisterRequest _$MemberRegisterRequestFromJson(
    Map<String, dynamic> json) {
  return MemberRegisterRequest(
    tranId: json['tranId'] as String,
    tranTime: json['tranTime'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    nickname: json['nickname'] as String,
    sex: json['sex'] as String,
    birthday: json['birthday'] as String,
    mobile: json['mobile'] as String,
    telephone: json['telephone'] as String,
    email: json['email'] as String,
    wechatNum: json['wechatNum'] as String,
    qqNum: json['qqNum'] as String,
    idType: json['idType'] as int,
    idCard: json['idCard'] as String,
    brandOption: json['brandOption'] as int,
    corporateOption: json['corporateOption'] as int,
    emailOption: json['emailOption'] as int,
    smsOption: json['smsOption'] as int,
    wechatEticketOption: json['wechatEticketOption'] as int,
    ethnicGroup: json['ethnicGroup'] as int,
    cardType: json['cardType'] as String,
    remark: json['remark'] as int,
  );
}

Map<String, dynamic> _$MemberRegisterRequestToJson(
        MemberRegisterRequest instance) =>
    <String, dynamic>{
      'tranId': instance.tranId,
      'tranTime': instance.tranTime,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nickname': instance.nickname,
      'sex': instance.sex,
      'birthday': instance.birthday,
      'mobile': instance.mobile,
      'telephone': instance.telephone,
      'email': instance.email,
      'wechatNum': instance.wechatNum,
      'qqNum': instance.qqNum,
      'idType': instance.idType,
      'idCard': instance.idCard,
      'brandOption': instance.brandOption,
      'corporateOption': instance.corporateOption,
      'emailOption': instance.emailOption,
      'smsOption': instance.smsOption,
      'wechatEticketOption': instance.wechatEticketOption,
      'ethnicGroup': instance.ethnicGroup,
      'cardType': instance.cardType,
      'remark': instance.remark,
    };
