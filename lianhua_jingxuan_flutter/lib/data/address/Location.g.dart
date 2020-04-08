// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location()
    ..longitude = json['longitude'] as String
    ..latitude = json['latitude'] as String
    ..distance = (json['distance'] as num)?.toDouble();
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'distance': instance.distance,
    };
