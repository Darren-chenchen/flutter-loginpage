import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'ThreeColumnProduct.g.dart';

@JsonSerializable()
class ThreeColumnProduct extends StrandComponent{
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
	//是否显示角标
	bool cornerMark;
	//是否显示商品原价
	bool marketPrice;
	//图片组url
	List<BannerImage> images;
	//销量超过收起
	String isPackUp;
	//限定销量数
	String isPackUpLine;
	//隐藏售完商品
	bool hideSoldOut;

	ThreeColumnProduct({
		this.title,
		this.titleColor,
		this.listBgColor,
		this.productTitleColor,
		this.productSubTitleColor,
		this.btnBgColor,
		this.cornerMark,
		this.marketPrice,
		this.images,
		this.isPackUp,
		this.isPackUpLine,
		this.hideSoldOut
	});

	factory ThreeColumnProduct.fromJson(Map<String, dynamic> json) => _$ThreeColumnProductFromJson(json);

	Map<String, dynamic> toJson() => _$ThreeColumnProductToJson(this);

}