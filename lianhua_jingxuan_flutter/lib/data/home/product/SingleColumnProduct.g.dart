// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleColumnProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleColumnProduct _$SingleColumnProductFromJson(Map<String, dynamic> json) {
  return SingleColumnProduct(
    title: json['title'] as String,
    titleColor: json['titleColor'] as String,
    show: json['show'] as String,
    showSetting: json['showSetting'] as String,
    listBgColor: json['listBgColor'] as String,
    productTitleColor: json['productTitleColor'] as String,
    productSubTitleColor: json['productSubTitleColor'] as String,
    btnBgColor: json['btnBgColor'] as String,
    btnColor: json['btnColor'] as String,
    cornerMark: json['cornerMark'] as bool,
    subTitle: json['subTitle'] as bool,
    marketPrice: json['marketPrice'] as bool,
    returnCash: json['returnCash'] as bool,
    promoLabel: json['promoLabel'] as bool,
    importShopSkus: (json['importShopSkus'] as List)
        ?.map((e) => e == null
            ? null
            : ImportShopSkus.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$SingleColumnProductToJson(
        SingleColumnProduct instance) =>
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
      'show': instance.show,
      'showSetting': instance.showSetting,
      'listBgColor': instance.listBgColor,
      'productTitleColor': instance.productTitleColor,
      'productSubTitleColor': instance.productSubTitleColor,
      'btnBgColor': instance.btnBgColor,
      'btnColor': instance.btnColor,
      'cornerMark': instance.cornerMark,
      'subTitle': instance.subTitle,
      'marketPrice': instance.marketPrice,
      'returnCash': instance.returnCash,
      'promoLabel': instance.promoLabel,
      'importShopSkus': instance.importShopSkus,
      'isPackUp': instance.isPackUp,
      'isPackUpLine': instance.isPackUpLine,
      'hideSoldOut': instance.hideSoldOut,
    };
