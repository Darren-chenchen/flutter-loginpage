// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contents _$ContentsFromJson(Map<String, dynamic> json) {
  return Contents(
    contents: json['contents'] == null
        ? null
        : ContentData.fromJson(json['contents'] as Map<String, dynamic>),
    skus: (json['skus'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : SimplePlatformShopSku.fromJson(e as Map<String, dynamic>)),
    ),
    categories: json['categories'] as Map<String, dynamic>,
    coupons: json['coupons'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'contents': instance.contents,
      'skus': instance.skus,
      'categories': instance.categories,
      'coupons': instance.coupons,
    };
