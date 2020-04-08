// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlatformShopSku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformShopSku _$PlatformShopSkuFromJson(Map<String, dynamic> json) {
  return PlatformShopSku(
    id: json['id'] as String,
    platformId: json['platformId'] as String,
    platformName: json['platformName'] as String,
    shopId: json['shopId'] as String,
    shopName: json['shopName'] as String,
    sku: json['sku'] == null
        ? null
        : Sku.fromJson(json['sku'] as Map<String, dynamic>),
    stock: (json['stock'] as num)?.toDouble(),
    price: (json['price'] as num)?.toDouble(),
    prmPrice: (json['prmPrice'] as num)?.toDouble(),
    deliveries: (json['deliveries'] as List)?.map((e) => e as String)?.toList(),
    pmsDetails: (json['pmsDetails'] as List)
        ?.map((e) =>
            e == null ? null : PmsDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mbrPrice: (json['mbrPrice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PlatformShopSkuToJson(PlatformShopSku instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platformId': instance.platformId,
      'platformName': instance.platformName,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'sku': instance.sku,
      'stock': instance.stock,
      'price': instance.price,
      'prmPrice': instance.prmPrice,
      'mbrPrice': instance.mbrPrice,
      'deliveries': instance.deliveries,
      'pmsDetails': instance.pmsDetails,
    };
