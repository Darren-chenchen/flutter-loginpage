// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DoubleColumnProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoubleColumnProduct _$DoubleColumnProductFromJson(Map<String, dynamic> json) {
  return DoubleColumnProduct(
    title: json['title'] as String,
    titleColor: json['titleColor'] as String,
    listBgColor: json['listBgColor'] as String,
    productTitleColor: json['productTitleColor'] as String,
    productSubTitleColor: json['productSubTitleColor'] as String,
    btnBgColor: json['btnBgColor'] as String,
    buttonTextColor: json['buttonTextColor'] as String,
    cornerMark: json['cornerMark'] as bool,
    subTitle: json['subTitle'] as bool,
    marketPrice: json['marketPrice'] as bool,
    returnCash: json['returnCash'] as bool,
    promoLabel: json['promoLabel'] as bool,
    skuIds: json['skuIds'] as String,
    isPackUp: json['isPackUp'] as String,
    packUpLine: json['packUpLine'] as int,
    hideSoldOut: json['hideSoldOut'] as bool,
    importShopSkus: (json['importShopSkus'] as List)
        ?.map((e) => e == null
            ? null
            : ImportShopSkus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..storeIds = json['storeIds'] as String
    ..begin = json['begin'] as String
    ..end = json['end'] as String
    ..marginBottom = json['marginBottom'] as int;
}

Map<String, dynamic> _$DoubleColumnProductToJson(
        DoubleColumnProduct instance) =>
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
      'buttonTextColor': instance.buttonTextColor,
      'cornerMark': instance.cornerMark,
      'subTitle': instance.subTitle,
      'marketPrice': instance.marketPrice,
      'returnCash': instance.returnCash,
      'promoLabel': instance.promoLabel,
      'skuIds': instance.skuIds,
      'isPackUp': instance.isPackUp,
      'packUpLine': instance.packUpLine,
      'hideSoldOut': instance.hideSoldOut,
      'importShopSkus': instance.importShopSkus,
    };
