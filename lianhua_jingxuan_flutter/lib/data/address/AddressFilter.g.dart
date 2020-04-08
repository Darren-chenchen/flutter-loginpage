// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddressFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressFilter _$AddressFilterFromJson(Map<String, dynamic> json) {
  return AddressFilter()
    ..keyword = json['keyword'] as String
    ..location = json['location'] as String
    ..radius = json['radius'] as int
    ..page = json['page'] as int
    ..pageSize = json['pageSize'] as int;
}

Map<String, dynamic> _$AddressFilterToJson(AddressFilter instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'location': instance.location,
      'radius': instance.radius,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
