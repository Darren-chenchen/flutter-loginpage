// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ActiviteCommonComponent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiviteCommonComponent _$ActiviteCommonComponentFromJson(
    Map<String, dynamic> json) {
  return ActiviteCommonComponent(
    title: json['title'] as String,
    titleColor: json['titleColor'] as String,
    listBgColor: json['listBgColor'] as String,
    productTitleColor: json['productTitleColor'] as String,
    productSubTitleColor: json['productSubTitleColor'] as String,
    btnBgColor: json['btnBgColor'] as String,
    cornerMark: json['cornerMark'] as bool,
    marketPrice: json['marketPrice'] as bool,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : BannerImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isPackUp: json['isPackUp'] as String,
    isPackUpLine: json['isPackUpLine'] as String,
    hideSoldOut: json['hideSoldOut'] as bool,
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$ActiviteCommonComponentToJson(
        ActiviteCommonComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'title': instance.title,
      'titleColor': instance.titleColor,
      'listBgColor': instance.listBgColor,
      'productTitleColor': instance.productTitleColor,
      'productSubTitleColor': instance.productSubTitleColor,
      'btnBgColor': instance.btnBgColor,
      'cornerMark': instance.cornerMark,
      'marketPrice': instance.marketPrice,
      'images': instance.images,
      'isPackUp': instance.isPackUp,
      'isPackUpLine': instance.isPackUpLine,
      'hideSoldOut': instance.hideSoldOut,
    };
