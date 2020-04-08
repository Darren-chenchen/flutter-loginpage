// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCartModifyLineRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCartModifyLineRequest _$JxCartModifyLineRequestFromJson(
    Map<String, dynamic> json) {
  return JxCartModifyLineRequest(
    uuidQtyList: (json['uuidQtyList'] as List)
        ?.map((e) =>
            e == null ? null : CodeQty.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..memberId = json['memberId'] as String
    ..isTemp = json['isTemp'] as bool;
}

Map<String, dynamic> _$JxCartModifyLineRequestToJson(
        JxCartModifyLineRequest instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'isTemp': instance.isTemp,
      'uuidQtyList': instance.uuidQtyList,
    };
