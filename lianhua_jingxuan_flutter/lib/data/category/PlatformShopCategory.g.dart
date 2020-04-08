// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlatformShopCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformShopCategory _$PlatformShopCategoryFromJson(Map<String, dynamic> json) {
  return PlatformShopCategory(
    platformId: json['platformId'] as String,
    shopId: json['shopId'] as String,
    id: json['id'] as String,
    code: json['code'] as String,
    name: json['name'] as String,
    upperId: json['upperId'] as String,
    path: json['path'] as String,
    sort: json['sort'] as int,
    children: (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : PlatformShopCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    upperEq: json['upperEq'] as String,
  );
}

Map<String, dynamic> _$PlatformShopCategoryToJson(
        PlatformShopCategory instance) =>
    <String, dynamic>{
      'platformId': instance.platformId,
      'shopId': instance.shopId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'upperId': instance.upperId,
      'path': instance.path,
      'sort': instance.sort,
      'children': instance.children,
      'upperEq': instance.upperEq,
    };
