// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlatformShopCategoryFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformShopCategoryFilter _$PlatformShopCategoryFilterFromJson(
    Map<String, dynamic> json) {
  return PlatformShopCategoryFilter(
    shopIdEq: json['shopIdEq'] as String,
    upperEq: json['upperEq'] as String,
    keyword: json['keyword'] as String,
    idEq: json['idEq'] as String,
    codeEq: json['codeEq'] as String,
    codeIn: (json['codeIn'] as List)?.map((e) => e as String)?.toList(),
    activityIdEq: json['activityIdEq'] as String,
    platformCategoryIdEq: json['platformCategoryIdEq'] as String,
    platformIdEq: json['platformIdEq'] as String,
  );
}

Map<String, dynamic> _$PlatformShopCategoryFilterToJson(
        PlatformShopCategoryFilter instance) =>
    <String, dynamic>{
      'shopIdEq': instance.shopIdEq,
      'upperEq': instance.upperEq,
      'keyword': instance.keyword,
      'idEq': instance.idEq,
      'codeEq': instance.codeEq,
      'codeIn': instance.codeIn,
      'activityIdEq': instance.activityIdEq,
      'platformCategoryIdEq': instance.platformCategoryIdEq,
      'platformIdEq': instance.platformIdEq,
    };
