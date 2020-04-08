import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'HotZoneCoupon.g.dart';

@JsonSerializable()
class HotZoneCoupon extends StrandComponent{
	//标题
	String title;
	//图片url
	String imageUrl;

	HotZoneCoupon({
		this.title,
		this.imageUrl
	});

	factory HotZoneCoupon.fromJson(Map<String, dynamic> json) => _$HotZoneCouponFromJson(json);

	Map<String, dynamic> toJson() => _$HotZoneCouponToJson(this);

}