import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'SingleColumnCoupon.g.dart';

@JsonSerializable()
class SingleColumnCoupon extends StrandComponent{
	//标题
	String title;
	//样式
	String style;
	//背景色
	String displayColor;
	//列表背景色
	String listBackgroundColor;
	//
	String skuTitleColor;
	//
	String skuSubtitleColor;
	//按钮背景色
	String buttonBackgroundColor;
	//按钮字体色
	String buttonTextColor;
	//优惠券展示设置
	List<String> showMessage;
	//优惠券信息
	List<String> couponIds;

	SingleColumnCoupon({
		this.title,
		this.style,
		this.displayColor,
		this.listBackgroundColor,
		this.skuTitleColor,
		this.skuSubtitleColor,
		this.buttonBackgroundColor,
		this.buttonTextColor,
		this.showMessage,
		this.couponIds
	});

	factory SingleColumnCoupon.fromJson(Map<String, dynamic> json) => _$SingleColumnCouponFromJson(json);

	Map<String, dynamic> toJson() => _$SingleColumnCouponToJson(this);

}