import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/address/IdName.dart';

part 'SimplePlatformShopSku.g.dart';

@JsonSerializable()
class SimplePlatformShopSku {
	String id;
	String platformId;
	String shopId;
	String skuId;
	String code;
	String skuInputCode;
	String name;
	String title;
	String subTitle;
	String spec;
	double qpc;
	double price;
	double mbrPrice;
	double prmPrice;
	String image;
	IdName platformCategory;
	IdName category;
	IdName brand;
	String comboType;

	SimplePlatformShopSku({
		this.id,
		this.platformId,
		this.shopId,
		this.skuId,
		this.code,
		this.skuInputCode,
		this.name,
		this.title,
		this.subTitle,
		this.spec,
		this.qpc,
		this.price,
		this.mbrPrice,
		this.prmPrice,
		this.image,
		this.platformCategory,
		this.category,
		this.brand,
		this.comboType
	});

	factory SimplePlatformShopSku.fromJson(Map<String, dynamic> json) => _$SimplePlatformShopSkuFromJson(json);

	Map<String, dynamic> toJson() => _$SimplePlatformShopSkuToJson(this);

}