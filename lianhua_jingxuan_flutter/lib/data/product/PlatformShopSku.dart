import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/product/PmsDetail.dart';
import 'package:lianhua_jingxuan_flutter/data/product/Sku.dart';

part 'PlatformShopSku.g.dart';

@JsonSerializable()
class PlatformShopSku {
	//平台门店商品id
	String id;
	//平台id
	String platformId;
	//平台名称
	String platformName;
	//门店id
	String shopId;
	//门店名称
	String shopName;
	//sku
	Sku sku;
	//库存数量
	double stock;
	//销售价
	double price;
	//促销价
	double prmPrice;
	double mbrPrice;
	//支持的配送方式
	List<String> deliveries;
	//促销相关信息
	List<PmsDetail> pmsDetails;

	PlatformShopSku({
		this.id,
		this.platformId,
		this.platformName,
		this.shopId,
		this.shopName,
		this.sku,
		this.stock,
		this.price,
		this.prmPrice,
		this.deliveries,
		this.pmsDetails,
		this.mbrPrice
	});

	factory PlatformShopSku.fromJson(Map<String, dynamic> json) => _$PlatformShopSkuFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformShopSkuToJson(this);

}