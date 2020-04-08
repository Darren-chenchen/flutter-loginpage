// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimplePlatformShopSku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimplePlatformShopSku _$SimplePlatformShopSkuFromJson(
    Map<String, dynamic> json) {
  return SimplePlatformShopSku(
    id: json['id'] as String,
    platformId: json['platformId'] as String,
    shopId: json['shopId'] as String,
    skuId: json['skuId'] as String,
    code: json['code'] as String,
    skuInputCode: json['skuInputCode'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    subTitle: json['subTitle'] as String,
    spec: json['spec'] as String,
    qpc: (json['qpc'] as num)?.toDouble(),
    price: (json['price'] as num)?.toDouble(),
    mbrPrice: (json['mbrPrice'] as num)?.toDouble(),
    prmPrice: (json['prmPrice'] as num)?.toDouble(),
    image: json['image'] as String,
    platformCategory: json['platformCategory'] == null
        ? null
        : IdName.fromJson(json['platformCategory'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : IdName.fromJson(json['category'] as Map<String, dynamic>),
    brand: json['brand'] == null
        ? null
        : IdName.fromJson(json['brand'] as Map<String, dynamic>),
    comboType: json['comboType'] as String,
  );
}

Map<String, dynamic> _$SimplePlatformShopSkuToJson(
        SimplePlatformShopSku instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platformId': instance.platformId,
      'shopId': instance.shopId,
      'skuId': instance.skuId,
      'code': instance.code,
      'skuInputCode': instance.skuInputCode,
      'name': instance.name,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'spec': instance.spec,
      'qpc': instance.qpc,
      'price': instance.price,
      'mbrPrice': instance.mbrPrice,
      'prmPrice': instance.prmPrice,
      'image': instance.image,
      'platformCategory': instance.platformCategory,
      'category': instance.category,
      'brand': instance.brand,
      'comboType': instance.comboType,
    };
