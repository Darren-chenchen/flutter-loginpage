import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'SlidingCoupon.g.dart';

@JsonSerializable()
class SlidingCoupon extends StrandComponent{
	//
	String skuTitleColor;
	//样式
	String style;
	//
	String displayColor;
	//列表背景色
	String listBackgroundColor;
	//
	String skuSubtitleColor;
	//按钮背景色
	String buttonBackgroundColor;
	//按钮字体色
	String buttonTextColor;
	//展示信息
	List<String> showMessage;
	//优惠券信息
	List<String> couponIds;

	SlidingCoupon({
		this.skuTitleColor,
		this.style,
		this.displayColor,
		this.listBackgroundColor,
		this.skuSubtitleColor,
		this.buttonBackgroundColor,
		this.buttonTextColor,
		this.showMessage,
		this.couponIds
	});

	factory SlidingCoupon.fromJson(Map<String, dynamic> json) => _$SlidingCouponFromJson(json);

	Map<String, dynamic> toJson() => _$SlidingCouponToJson(this);

}