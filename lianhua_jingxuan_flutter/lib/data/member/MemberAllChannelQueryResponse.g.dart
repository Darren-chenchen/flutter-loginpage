// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberAllChannelQueryResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAllChannelQueryResponse _$MemberAllChannelQueryResponseFromJson(
    Map<String, dynamic> json) {
  return MemberAllChannelQueryResponse(
    memberUuid: json['memberUuid'] as String,
    memberNum: json['memberNum'] as String,
    name: json['name'] as String,
    birthday: json['birthday'] as String,
    scores: (json['scores'] as List)
        ?.map(
            (e) => e == null ? null : Score.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isEmployee: json['isEmployee'] as String,
    employeeDiscount: (json['employeeDiscount'] as num)?.toDouble(),
    discountRatio: (json['discountRatio'] as num)?.toDouble(),
    availableAmount: (json['availableAmount'] as num)?.toDouble(),
    equities: (json['equities'] as List)
        ?.map((e) =>
            e == null ? null : Equity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MemberAllChannelQueryResponseToJson(
        MemberAllChannelQueryResponse instance) =>
    <String, dynamic>{
      'memberUuid': instance.memberUuid,
      'memberNum': instance.memberNum,
      'name': instance.name,
      'birthday': instance.birthday,
      'scores': instance.scores,
      'isEmployee': instance.isEmployee,
      'employeeDiscount': instance.employeeDiscount,
      'discountRatio': instance.discountRatio,
      'availableAmount': instance.availableAmount,
      'equities': instance.equities,
    };
