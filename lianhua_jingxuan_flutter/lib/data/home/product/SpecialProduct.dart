import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'SpecialProduct.g.dart';

@JsonSerializable()
class SpecialProduct extends StrandComponent{
	//标题
	String title;
	//标题颜色
	String titleColor;
	//图片url
	String imageUrl;
	//列表背景色
	String listBgColor;
	//商品标题色
	String productTitleColor;
	//商品副标题色
	String productSubTitleColor;
	//按钮背景色
	String btnBgColor;
	//按钮颜色
	String btnColor;
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
	//添加商品id
	String skuIds;

	SpecialProduct({
		this.title,
		this.titleColor,
		this.imageUrl,
		this.listBgColor,
		this.productTitleColor,
		this.productSubTitleColor,
		this.btnBgColor,
		this.btnColor,
		this.cornerMark,
		this.subTitle,
		this.marketPrice,
		this.returnCash,
		this.promoLabel,
		this.skuIds
	});

	factory SpecialProduct.fromJson(Map<String, dynamic> json) => _$SpecialProductFromJson(json);

	Map<String, dynamic> toJson() => _$SpecialProductToJson(this);

}