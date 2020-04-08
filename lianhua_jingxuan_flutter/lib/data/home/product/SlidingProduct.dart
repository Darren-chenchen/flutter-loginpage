import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/product/importsku/ImportShopSkus.dart';

part 'SlidingProduct.g.dart';

@JsonSerializable()
class SlidingProduct extends StrandComponent{
	//标题名称
	String title;
	//标题颜色
	String titleColor;
	//列表背景色
	String listBgColor;
	//商品标题色
	String productTitleColor;
	//按钮背景色
	String btnBgColor;
	//按钮背景色
	String btnColor;
	//是否显示角标
	bool cornerMark;
	//是否显示商品原价
	bool marketPrice;
	//导入商品信息
	List<ImportShopSkus> importShopSkus;
	//销量超过收起
	String isPackUp;
	//限定销量数
	String isPackUpLine;
	//隐藏售完商品
	bool hideSoldOut;

	SlidingProduct({
		this.title,
		this.titleColor,
		this.listBgColor,
		this.productTitleColor,
		this.btnBgColor,
		this.btnColor,
		this.cornerMark,
		this.marketPrice,
		this.importShopSkus,
		this.isPackUp,
		this.isPackUpLine,
		this.hideSoldOut
	});

	factory SlidingProduct.fromJson(Map<String, dynamic> json) => _$SlidingProductFromJson(json);

	Map<String, dynamic> toJson() => _$SlidingProductToJson(this);

}