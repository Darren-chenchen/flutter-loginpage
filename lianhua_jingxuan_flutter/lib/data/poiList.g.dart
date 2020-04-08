// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poiList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoiList _$PoiListFromJson(Map<String, dynamic> json) {
  return PoiList()
    ..city = json['city'] as String
    ..address = json['address'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$PoiListToJson(PoiList instance) => <String, dynamic>{
      'city': instance.city,
      'address': instance.address,
      'name': instance.name,
    };
