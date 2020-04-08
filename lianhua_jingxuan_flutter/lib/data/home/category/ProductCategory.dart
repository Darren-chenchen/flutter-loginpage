import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';
import 'package:lianhua_jingxuan_flutter/data/home/product/importsku/ImportShopSkus.dart';

part 'ProductCategory.g.dart';

@JsonSerializable()
class ProductCategory extends StrandComponent{
	//背景颜色
	String bgColor;
	//正常字体色
	String color;
	//选中字体色
	String activeColor;
	//选中下划线色
	String activeUnderlineColor;
	//标题图片
	String titleImageUrl;
	//字号大小
	String subTitleFontSize;
	//标题字体色
	String titleColor;
	//展示样式
	String showStyle;
	//名称字体色
	String nameColor;
	//按钮背景色
	String btnBgColor;
	//是否显示角标
	bool propCornerMark;
	//是否显示副标题
	bool propSubTitle;
	//是否显示商品原价
	bool propMarketPrice;
	//是否显示会员返现
	bool propReturnCash;
	//是否显示促销标签
	bool propPromoLabel;
	//导入商品
	List<ImportShopSkus> importShopSkus;
	//销量超过收起
	bool isPackUp;
	//限定销量数
	int packUpLine;
	//隐藏售完商品
	bool hideSoldOut;

	ProductCategory({
		this.bgColor,
		this.color,
		this.activeColor,
		this.activeUnderlineColor,
		this.titleImageUrl,
		this.subTitleFontSize,
		this.titleColor,
		this.showStyle,
		this.nameColor,
		this.btnBgColor,
		this.propCornerMark,
		this.propSubTitle,
		this.propMarketPrice,
		this.propReturnCash,
		this.propPromoLabel,
		this.importShopSkus,
		this.isPackUp,
		this.packUpLine,
		this.hideSoldOut
	});

	factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);

	Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);

}