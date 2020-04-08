// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return ProductCategory(
    bgColor: json['bgColor'] as String,
    color: json['color'] as String,
    activeColor: json['activeColor'] as String,
    activeUnderlineColor: json['activeUnderlineColor'] as String,
    titleImageUrl: json['titleImageUrl'] as String,
    subTitleFontSize: json['subTitleFontSize'] as String,
    titleColor: json['titleColor'] as String,
    showStyle: json['showStyle'] as String,
    nameColor: json['nameColor'] as String,
    btnBgColor: json['btnBgColor'] as String,
    propCornerMark: json['propCornerMark'] as bool,
    propSubTitle: json['propSubTitle'] as bool,
    propMarketPrice: json['propMarketPrice'] as bool,
    propReturnCash: json['propReturnCash'] as bool,
    propPromoLabel: json['propPromoLabel'] as bool,
    importShopSkus: (json['importShopSkus'] as List)
        ?.map((e) => e == null
            ? null
            : ImportShopSkus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isPackUp: json['isPackUp'] as bool,
    packUpLine: json['packUpLine'] as int,
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

Map<String, dynamic> _$ProductCategoryToJson(ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'storeIds': instance.storeIds,
      'begin': instance.begin,
      'end': instance.end,
      'marginBottom': instance.marginBottom,
      'bgColor': instance.bgColor,
      'color': instance.color,
      'activeColor': instance.activeColor,
      'activeUnderlineColor': instance.activeUnderlineColor,
      'titleImageUrl': instance.titleImageUrl,
      'subTitleFontSize': instance.subTitleFontSize,
      'titleColor': instance.titleColor,
      'showStyle': instance.showStyle,
      'nameColor': instance.nameColor,
      'btnBgColor': instance.btnBgColor,
      'propCornerMark': instance.propCornerMark,
      'propSubTitle': instance.propSubTitle,
      'propMarketPrice': instance.propMarketPrice,
      'propReturnCash': instance.propReturnCash,
      'propPromoLabel': instance.propPromoLabel,
      'importShopSkus': instance.importShopSkus,
      'isPackUp': instance.isPackUp,
      'packUpLine': instance.packUpLine,
      'hideSoldOut': instance.hideSoldOut,
    };
