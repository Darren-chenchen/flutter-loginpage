// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MemberAddress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAddress _$MemberAddressFromJson(Map<String, dynamic> json) {
  return MemberAddress(
    id: json['id'] as String,
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    isDefault: json['isDefault'] as bool,
    areId: json['areId'] as String,
    areaName: json['areaName'] as String,
    address: json['address'] as String,
    zipCode: json['zipCode'] as String,
    longitude: json['longitude'] as String,
    latitude: json['latitude'] as String,
    remark: json['remark'] as String,
    addressLabel: json['addressLabel'] as String,
    mapAddress: json['mapAddress'] as String,
  );
}

Map<String, dynamic> _$MemberAddressToJson(MemberAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'isDefault': instance.isDefault,
      'areId': instance.areId,
      'areaName': instance.areaName,
      'address': instance.address,
      'zipCode': instance.zipCode,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'remark': instance.remark,
      'addressLabel': instance.addressLabel,
      'mapAddress': instance.mapAddress,
    };
