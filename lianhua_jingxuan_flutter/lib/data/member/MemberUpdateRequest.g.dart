// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberUpdateRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberUpdateRequest _$MemberUpdateRequestFromJson(Map<String, dynamic> json) {
  return MemberUpdateRequest(
    tranId: json['tranId'] as String,
    tranTime: json['tranTime'] as String,
    accountType: json['accountType'] as int,
    accountCode: json['accountCode'] as String,
    age: json['age'] as int,
    sex: json['sex'] as String,
    mobile: json['mobile'] as String,
    addrssList: (json['addrssList'] as List)
        ?.map((e) => e == null
            ? null
            : ReceiveAddress.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberUpdateRequestToJson(
        MemberUpdateRequest instance) =>
    <String, dynamic>{
      'tranId': instance.tranId,
      'tranTime': instance.tranTime,
      'accountType': instance.accountType,
      'accountCode': instance.accountCode,
      'age': instance.age,
      'sex': instance.sex,
      'mobile': instance.mobile,
      'addrssList': instance.addrssList,
    };
