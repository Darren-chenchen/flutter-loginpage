// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReceiveAddress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiveAddress _$ReceiveAddressFromJson(Map<String, dynamic> json) {
  return ReceiveAddress(
    id: json['id'] as int,
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    type: json['type'] as int,
    isDefault: json['isDefault'] as int,
    areaId: json['areaId'] as int,
    areaName: json['areaName'] as String,
    address: json['address'] as String,
    zipCode: json['zipCode'] as String,
    longitude: json['longitude'] as String,
    latitude: json['latitude'] as String,
    addressLabel: json['addressLabel'] as String,
    mapAddress: json['mapAddress'] as String,
    remark: json['remark'] as String,
    operateFlag: json['operateFlag'] as int,
  );
}

Map<String, dynamic> _$ReceiveAddressToJson(ReceiveAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'type': instance.type,
      'isDefault': instance.isDefault,
      'areaId': instance.areaId,
      'areaName': instance.areaName,
      'address': instance.address,
      'zipCode': instance.zipCode,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'addressLabel': instance.addressLabel,
      'mapAddress': instance.mapAddress,
      'remark': instance.remark,
      'operateFlag': instance.operateFlag,
    };
