// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartAddSkuRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartAddSkuRequest _$JxCartAddSkuRequestFromJson(Map<String, dynamic> json) {
  return JxCartAddSkuRequest(
    codeQtyList: (json['codeQtyList'] as List)
        ?.map((e) =>
            e == null ? null : CodeQty.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartAddSkuRequestToJson(
        JxCartAddSkuRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'codeQtyList': instance.codeQtyList,
    };
