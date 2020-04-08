// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address()
    ..country = json['country'] as String
    ..provinceId = json['provinceId'] as String
    ..provinceName = json['provinceName'] as String
    ..cityId = json['cityId'] as String
    ..cityName = json['cityName'] as String
    ..districtId = json['districtId'] as String
    ..districtName = json['districtName'] as String
    ..streetId = json['streetId'] as String
    ..streetName = json['streetName'] as String
    ..detailAddress = json['detailAddress'] as String
    ..postcode = json['postcode'] as String
    ..location = json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'country': instance.country,
      'provinceId': instance.provinceId,
      'provinceName': instance.provinceName,
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'districtId': instance.districtId,
      'districtName': instance.districtName,
      'streetId': instance.streetId,
      'streetName': instance.streetName,
      'detailAddress': instance.detailAddress,
      'postcode': instance.postcode,
      'location': instance.location,
    };
