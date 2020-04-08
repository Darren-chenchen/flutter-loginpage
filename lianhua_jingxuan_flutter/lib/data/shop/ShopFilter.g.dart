// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShopFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopFilter _$ShopFilterFromJson(Map<String, dynamic> json) {
  return ShopFilter()
    ..idEq = json['idEq'] as String
    ..idIn = (json['idIn'] as List)?.map((e) => e as String)?.toList()
    ..keyword = json['keyword'] as String
    ..codeEq = json['codeEq'] as String
    ..codeLike = json['codeLike'] as String
    ..codeIn = (json['codeIn'] as List)?.map((e) => e as String)?.toList()
    ..nameLike = json['nameLike'] as String
    ..location = json['location'] as String
    ..calcDistance = json['calcDistance'] as bool
    ..platformIdEq = json['platformIdEq'] as String;
}

Map<String, dynamic> _$ShopFilterToJson(ShopFilter instance) =>
    <String, dynamic>{
      'idEq': instance.idEq,
      'idIn': instance.idIn,
      'keyword': instance.keyword,
      'codeEq': instance.codeEq,
      'codeLike': instance.codeLike,
      'codeIn': instance.codeIn,
      'nameLike': instance.nameLike,
      'location': instance.location,
      'calcDistance': instance.calcDistance,
      'platformIdEq': instance.platformIdEq,
    };
