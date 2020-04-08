import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/BCouponInfo.dart';

part 'BAvailableOrderCoupon.g.dart';

@JsonSerializable()
class BAvailableOrderCoupon extends BCouponInfo{
	//是否可勾选
	bool canUse;

	BAvailableOrderCoupon({
		this.canUse
	});

	factory BAvailableOrderCoupon.fromJson(Map<String, dynamic> json) => _$BAvailableOrderCouponFromJson(json);

	Map<String, dynamic> toJson() => _$BAvailableOrderCouponToJson(this);

}