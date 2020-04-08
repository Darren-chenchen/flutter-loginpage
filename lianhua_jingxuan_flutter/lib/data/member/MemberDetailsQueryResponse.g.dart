// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberDetailsQueryResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberDetailsQueryResponse _$MemberDetailsQueryResponseFromJson(
    Map<String, dynamic> json) {
  return MemberDetailsQueryResponse(
    memberUuid: json['memberUuid'] as String,
    memberType: json['memberType'] as String,
    memberStatus: json['memberStatus'] as String,
    memberNum: json['memberNum'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    memberHeadImg: json['memberHeadImg'] as String,
    sex: json['sex'] as String,
    birthday: json['birthday'] as String,
    age: json['age'] as String,
    mobile: json['mobile'] as String,
    telephone: json['telephone'] as String,
    fax: json['fax'] as String,
    email: json['email'] as String,
    wechatNum: json['wechatNum'] as String,
    wechatFollow: json['wechatFollow'] as String,
    qqNum: json['qqNum'] as String,
    idType: json['idType'] as String,
    idCard: json['idCard'] as String,
    idCardPositiveUrl: json['idCardPositiveUrl'] as String,
    idCardOppositeUrl: json['idCardOppositeUrl'] as String,
    isCertification: json['isCertification'] as String,
    brandOption: json['brandOption'] as String,
    corporateOption: json['corporateOption'] as String,
    emailOption: json['emailOption'] as String,
    smsOption: json['smsOption'] as String,
    phoneOption: json['phoneOption'] as String,
    wechatOption: json['wechatOption'] as String,
    wechatEticketOption: json['wechatEticketOption'] as String,
    dmOption: json['dmOption'] as String,
    emailValid: json['emailValid'] as String,
    mobileValid: json['mobileValid'] as String,
    telephoneValid: json['telephoneValid'] as String,
    isBlack: json['isBlack'] as String,
    isTester: json['isTester'] as String,
    isEmployee: json['isEmployee'] as String,
    discountAmount: json['discountAmount'] as String,
    discountRate: json['discountRate'] as String,
    extMemberId: json['extMemberId'] as String,
    registeDate: json['registeDate'] as String,
    employeeCode: (json['employeeCode'] as num)?.toDouble(),
    registerChannel: json['registerChannel'] == null
        ? null
        : RegisterChannel.fromJson(
            json['registerChannel'] as Map<String, dynamic>),
    registerStore: json['registerStore'] == null
        ? null
        : RegisterStore.fromJson(json['registerStore'] as Map<String, dynamic>),
    registerEmployee: json['registerEmployee'] == null
        ? null
        : RegisterEmployee.fromJson(
            json['registerEmployee'] as Map<String, dynamic>),
    registerBrand: json['registerBrand'] == null
        ? null
        : RegisterBrand.fromJson(json['registerBrand'] as Map<String, dynamic>),
    manageStore: json['manageStore'] == null
        ? null
        : ManageStore.fromJson(json['manageStore'] as Map<String, dynamic>),
    manageEmployee: json['manageEmployee'] == null
        ? null
        : ManageEmployee.fromJson(
            json['manageEmployee'] as Map<String, dynamic>),
    scores: (json['scores'] as List)
        ?.map(
            (e) => e == null ? null : Score.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberDetailsQueryResponseToJson(
        MemberDetailsQueryResponse instance) =>
    <String, dynamic>{
      'memberUuid': instance.memberUuid,
      'memberType': instance.memberType,
      'memberStatus': instance.memberStatus,
      'memberNum': instance.memberNum,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'memberHeadImg': instance.memberHeadImg,
      'sex': instance.sex,
      'birthday': instance.birthday,
      'age': instance.age,
      'mobile': instance.mobile,
      'telephone': instance.telephone,
      'fax': instance.fax,
      'email': instance.email,
      'wechatNum': instance.wechatNum,
      'wechatFollow': instance.wechatFollow,
      'qqNum': instance.qqNum,
      'idType': instance.idType,
      'idCard': instance.idCard,
      'idCardPositiveUrl': instance.idCardPositiveUrl,
      'idCardOppositeUrl': instance.idCardOppositeUrl,
      'isCertification': instance.isCertification,
      'brandOption': instance.brandOption,
      'corporateOption': instance.corporateOption,
      'emailOption': instance.emailOption,
      'smsOption': instance.smsOption,
      'phoneOption': instance.phoneOption,
      'wechatOption': instance.wechatOption,
      'wechatEticketOption': instance.wechatEticketOption,
      'dmOption': instance.dmOption,
      'emailValid': instance.emailValid,
      'mobileValid': instance.mobileValid,
      'telephoneValid': instance.telephoneValid,
      'isBlack': instance.isBlack,
      'isTester': instance.isTester,
      'isEmployee': instance.isEmployee,
      'discountAmount': instance.discountAmount,
      'discountRate': instance.discountRate,
      'extMemberId': instance.extMemberId,
      'registeDate': instance.registeDate,
      'employeeCode': instance.employeeCode,
      'registerChannel': instance.registerChannel,
      'registerStore': instance.registerStore,
      'registerEmployee': instance.registerEmployee,
      'registerBrand': instance.registerBrand,
      'manageStore': instance.manageStore,
      'manageEmployee': instance.manageEmployee,
      'scores': instance.scores,
    };
