import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/product/importsku/ImportShopSkus.dart';

part 'DoubleColumnProduct.g.dart';

@JsonSerializable()
class DoubleColumnProduct extends StrandComponent{
	//标题名称
	String title;
	//展示颜色
	String titleColor;
	//列表背景色
	String listBgColor;
	//商品标题色
	String productTitleColor;
	//商品副标色
	String productSubTitleColor;
	//按钮背景色
	String btnBgColor;
	//按钮颜色
	String buttonTextColor;
	//是否显示角标
	bool cornerMark;
	//是否显示副标题
	bool subTitle;
	//是否显示商品原价
	bool marketPrice;
	//是否显示会员返现
	bool returnCash;
	//是否显示促销标签
	bool promoLabel;
	//商品列表
	String skuIds;
	//销量超过收起
	String isPackUp;
	//限定销量数
	int packUpLine;
	//隐藏售完商品
	bool hideSoldOut;
	//导入商品信息
	List<ImportShopSkus> importShopSkus;

	DoubleColumnProduct({
		this.title,
		this.titleColor,
		this.listBgColor,
		this.productTitleColor,
		this.productSubTitleColor,
		this.btnBgColor,
		this.buttonTextColor,
		this.cornerMark,
		this.subTitle,
		this.marketPrice,
		this.returnCash,
		this.promoLabel,
		this.skuIds,
		this.isPackUp,
		this.packUpLine,
		this.hideSoldOut,
		this.importShopSkus
	});

	factory DoubleColumnProduct.fromJson(Map<String, dynamic> json) => _$DoubleColumnProductFromJson(json);

	Map<String, dynamic> toJson() => _$DoubleColumnProductToJson(this);

}