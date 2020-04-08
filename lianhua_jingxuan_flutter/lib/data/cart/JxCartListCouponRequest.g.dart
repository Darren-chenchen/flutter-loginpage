// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartListCouponRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartListCouponRequest _$JxCartListCouponRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartListCouponRequest(
    codes: (json['codes'] as List)?.map((e) => e as String)?.toList(),
    pageSize: json['pageSize'] as int,
    page: json['page'] as int,
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartListCouponRequestToJson(
        JxCartListCouponRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'codes': instance.codes,
      'pageSize': instance.pageSize,
      'page': instance.page,
    };
