// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlatformShopSkuFilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformShopSkuFilter _$PlatformShopSkuFilterFromJson(
    Map<String, dynamic> json) {
  return PlatformShopSkuFilter(
    platformIdEq: json['platformIdEq'] as String,
    shopIdEq: json['shopIdEq'] as String,
    shopIdIn: (json['shopIdIn'] as List)?.map((e) => e as String)?.toList(),
    idIn: (json['idIn'] as List)?.map((e) => e as String)?.toList(),
    skuIdIn: (json['skuIdIn'] as List)?.map((e) => e as String)?.toList(),
    keyword: json['keyword'] as String,
    platformCategoryIdEq: json['platformCategoryIdEq'] as String,
    activityIdEq: json['activityIdEq'] as String,
  )
    ..sorts = (json['sorts'] as List)
        ?.map(
            (e) => e == null ? null : Sort.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..memberInfo = json['memberInfo'] == null
        ? null
        : MemberInfo.fromJson(json['memberInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlatformShopSkuFilterToJson(
        PlatformShopSkuFilter instance) =>
    <String, dynamic>{
      'platformIdEq': instance.platformIdEq,
      'shopIdEq': instance.shopIdEq,
      'shopIdIn': instance.shopIdIn,
      'idIn': instance.idIn,
      'skuIdIn': instance.skuIdIn,
      'keyword': instance.keyword,
      'platformCategoryIdEq': instance.platformCategoryIdEq,
      'activityIdEq': instance.activityIdEq,
      'sorts': instance.sorts,
      'memberInfo': instance.memberInfo,
    };
