// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return LocationInfo()
    ..latitude = json['latitude'] as String
    ..longitude = json['longitude'] as String
    ..describe = json['describe'] as String
    ..requestId = json['requestId'] as String
    ..city = json['city'] as String
    ..district = json['district'] as String
    ..town = json['town'] as String
    ..street = json['street'] as String
    ..cityCode = json['cityCode'] as String
    ..poiList = (json['poiList'] as List)
        ?.map((e) =>
            e == null ? null : PoiList.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LocationInfoToJson(LocationInfo instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'describe': instance.describe,
      'requestId': instance.requestId,
      'city': instance.city,
      'district': instance.district,
      'town': instance.town,
      'street': instance.street,
      'cityCode': instance.cityCode,
      'poiList': instance.poiList,
    };
