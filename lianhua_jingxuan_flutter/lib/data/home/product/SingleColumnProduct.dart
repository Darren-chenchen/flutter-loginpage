import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/product/importsku/ImportShopSkus.dart';

part 'SingleColumnProduct.g.dart';

@JsonSerializable()
class SingleColumnProduct extends StrandComponent{
	//标题名称
	String title;
	//标题颜色
	String titleColor;
	//选择展示样式
	String show;
	//展示样式设置
	String showSetting;
	//列表背景色
	String listBgColor;
	//商品标题色
	String productTitleColor;
	//商品副标题色
	String productSubTitleColor;
	//按钮背景色
	String btnBgColor;
	//按钮背景色
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
	//导入商品信息
	List<ImportShopSkus> importShopSkus;
	//销量超过收起
	String isPackUp;
	//限定销量数
	String isPackUpLine;
	//隐藏售完商品
	bool hideSoldOut;

	SingleColumnProduct({
		this.title,
		this.titleColor,
		this.show,
		this.showSetting,
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
		this.importShopSkus,
		this.isPackUp,
		this.isPackUpLine,
		this.hideSoldOut
	});

	factory SingleColumnProduct.fromJson(Map<String, dynamic> json) => _$SingleColumnProductFromJson(json);

	Map<String, dynamic> toJson() => _$SingleColumnProductToJson(this);

}