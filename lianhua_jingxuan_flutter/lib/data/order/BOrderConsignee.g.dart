// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrderConsignee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrderConsignee _$BOrderConsigneeFromJson(Map<String, dynamic> json) {
  return BOrderConsignee(
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    province: json['province'] as String,
    city: json['city'] as String,
    district: json['district'] as String,
    street: json['street'] as String,
  );
}

Map<String, dynamic> _$BOrderConsigneeToJson(BOrderConsignee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'street': instance.street,
    };
