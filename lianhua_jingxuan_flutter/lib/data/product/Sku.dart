import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/address/IdName.dart';
import 'package:lianhua_jingxuan_flutter/data/product/InputCode.dart';
import 'package:lianhua_jingxuan_flutter/data/product/ProductAttribute.dart';
import 'package:lianhua_jingxuan_flutter/data/product/ProductProperties.dart';
import 'package:lianhua_jingxuan_flutter/data/shop/Description.dart';
import 'package:lianhua_jingxuan_flutter/data/shop/Tag.dart';

part 'Sku.g.dart';

@JsonSerializable()
class Sku {
	//goodsId
	String goodsId;
	//类型
	String type;
	//spuId
	String spuId;
	//skuId
	String id;
	//代码
	String code;
	//名称
	String name;
	//标题
	String title = '';
	//副标题
	String subTitle = '';
	//包装规格
	String spec;
	//包装规格浮动空间
	double specFloatingSpace;
	//重量
	double weight;
	//长度
	double length;
	//宽度
	double width;
	//高度
	double height;
	//参考进价
	double purchasePrice;
	//参考市场价
	double marketPrice;
	//售价
	double salePrice;
	//主图
	String image;
	//副图
	List<String> images;
	//主视频
	String video;
	//是否合格, 可用于标记主图是否合格
	bool qualified;
	//品牌
	IdName brand;
	//后台分类
	IdName category;
	//平台分类
	IdName platformCategory;
	//标签
	List<Tag> tags;
	//描述
	String description;
	//图文详情
	List<Description> descriptions;
	//商品特性
	List<ProductAttribute> attributes;
	//商品销售属性
	List<ProductProperties> properties;
	//首次售卖时间
	String firstSaleTime;
	//开始售卖时间
	String startSellDate;
	//结束售卖时间
	String endSellDate;
	//销售方式, 散装, 标准
	String saleType;
	//计价方式, 计数, 计重
	String valuationType;
	//经营方式, 经销，联营
	String businessType;
	//是否上架
	bool enabled;
	//输入码
	List<InputCode> inputCodes;
	int stock;

	Sku({
		this.goodsId,
		this.type,
		this.spuId,
		this.id,
		this.code,
		this.name,
		this.title = '',
		this.subTitle = '',
		this.spec,
		this.specFloatingSpace,
		this.weight,
		this.length,
		this.width,
		this.height,
		this.purchasePrice,
		this.marketPrice,
		this.salePrice,
		this.image,
		this.images,
		this.video,
		this.qualified,
		this.brand,
		this.category,
		this.platformCategory,
		this.tags,
		this.description,
		this.descriptions,
		this.attributes,
		this.properties,
		this.firstSaleTime,
		this.startSellDate,
		this.endSellDate,
		this.saleType,
		this.valuationType,
		this.businessType,
		this.enabled,
		this.inputCodes,
		this.stock
	});

	factory Sku.fromJson(Map<String, dynamic> json) => _$SkuFromJson(json);

	Map<String, dynamic> toJson() => _$SkuToJson(this);

}