import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/index/SimplePlatformShopSku.dart';

import './ContentData.dart';

part 'Contents.g.dart';

@JsonSerializable()
class Contents {
	//投放位置和投放内容
	ContentData contents;
	//投放内容相关商品信息
	Map<String, SimplePlatformShopSku> skus;
	//投放内容相关分类信息
	Map categories;
	//投放内容相关优惠券信息
	Map coupons;

	Contents({
		this.contents,
		this.skus,
		this.categories,
		this.coupons
	});

	factory Contents.fromJson(Map<String, dynamic> json) => _$ContentsFromJson(json);

	Map<String, dynamic> toJson() => _$ContentsToJson(this);

}