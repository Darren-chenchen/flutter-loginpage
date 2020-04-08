// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sku _$SkuFromJson(Map<String, dynamic> json) {
  return Sku(
    goodsId: json['goodsId'] as String,
    type: json['type'] as String,
    spuId: json['spuId'] as String,
    id: json['id'] as String,
    code: json['code'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    subTitle: json['subTitle'] as String,
    spec: json['spec'] as String,
    specFloatingSpace: (json['specFloatingSpace'] as num)?.toDouble(),
    weight: (json['weight'] as num)?.toDouble(),
    length: (json['length'] as num)?.toDouble(),
    width: (json['width'] as num)?.toDouble(),
    height: (json['height'] as num)?.toDouble(),
    purchasePrice: (json['purchasePrice'] as num)?.toDouble(),
    marketPrice: (json['marketPrice'] as num)?.toDouble(),
    salePrice: (json['salePrice'] as num)?.toDouble(),
    image: json['image'] as String,
    images: (json['images'] as List)?.map((e) => e as String)?.toList(),
    video: json['video'] as String,
    qualified: json['qualified'] as bool,
    brand: json['brand'] == null
        ? null
        : IdName.fromJson(json['brand'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : IdName.fromJson(json['category'] as Map<String, dynamic>),
    platformCategory: json['platformCategory'] == null
        ? null
        : IdName.fromJson(json['platformCategory'] as Map<String, dynamic>),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    descriptions: (json['descriptions'] as List)
        ?.map((e) =>
            e == null ? null : Description.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attributes: (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : ProductAttribute.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    properties: (json['properties'] as List)
        ?.map((e) => e == null
            ? null
            : ProductProperties.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    firstSaleTime: json['firstSaleTime'] as String,
    startSellDate: json['startSellDate'] as String,
    endSellDate: json['endSellDate'] as String,
    saleType: json['saleType'] as String,
    valuationType: json['valuationType'] as String,
    businessType: json['businessType'] as String,
    enabled: json['enabled'] as bool,
    inputCodes: (json['inputCodes'] as List)
        ?.map((e) =>
            e == null ? null : InputCode.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stock: json['stock'] as int,
  );
}

Map<String, dynamic> _$SkuToJson(Sku instance) => <String, dynamic>{
      'goodsId': instance.goodsId,
      'type': instance.type,
      'spuId': instance.spuId,
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'spec': instance.spec,
      'specFloatingSpace': instance.specFloatingSpace,
      'weight': instance.weight,
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'purchasePrice': instance.purchasePrice,
      'marketPrice': instance.marketPrice,
      'salePrice': instance.salePrice,
      'image': instance.image,
      'images': instance.images,
      'video': instance.video,
      'qualified': instance.qualified,
      'brand': instance.brand,
      'category': instance.category,
      'platformCategory': instance.platformCategory,
      'tags': instance.tags,
      'description': instance.description,
      'descriptions': instance.descriptions,
      'attributes': instance.attributes,
      'properties': instance.properties,
      'firstSaleTime': instance.firstSaleTime,
      'startSellDate': instance.startSellDate,
      'endSellDate': instance.endSellDate,
      'saleType': instance.saleType,
      'valuationType': instance.valuationType,
      'businessType': instance.businessType,
      'enabled': instance.enabled,
      'inputCodes': instance.inputCodes,
      'stock': instance.stock,
    };
