import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/product/MemberInfo.dart';
import 'package:lianhua_jingxuan_flutter/data/product/Sort.dart';

part 'PlatformShopSkuFilter.g.dart';

@JsonSerializable()
class PlatformShopSkuFilter {
	//平台ID等于
	String platformIdEq;
	//门店ID等于
	String shopIdEq;
	//门店ID在列表...
	List<String> shopIdIn;
	//平台门店商品ID在列表...
	List<String> idIn;
	//商品skuID在列表...
	List<String> skuIdIn;
	//关键字等于，sku的名称/ID/条码/编码的模糊查询
	String keyword;
	//平台分类id等于
	String platformCategoryIdEq;
	//活动id等于
	String activityIdEq;

	// 排序字段集合
	List<Sort> sorts;
	// 会员信息，查促销商品需要传
	MemberInfo memberInfo;

	PlatformShopSkuFilter({
		this.platformIdEq,
		this.shopIdEq,
		this.shopIdIn,
		this.idIn,
		this.skuIdIn,
		this.keyword,
		this.platformCategoryIdEq,
		this.activityIdEq
	});

	factory PlatformShopSkuFilter.fromJson(Map<String, dynamic> json) => _$PlatformShopSkuFilterFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformShopSkuFilterToJson(this);

}