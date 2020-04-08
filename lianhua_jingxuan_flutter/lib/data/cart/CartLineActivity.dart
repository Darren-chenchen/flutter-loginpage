import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/CartLineActivityAction.dart';

part 'CartLineActivity.g.dart';

@JsonSerializable()
class CartLineActivity {
	String label;
	String id;
	String description;
	CartLineActivityAction action = CartLineActivityAction.NONE;
	String endDate;

	CartLineActivity({
		this.label,
		this.id,
		this.description,
		this.action,
		this.endDate
	});

	factory CartLineActivity.fromJson(Map<String, dynamic> json) => _$CartLineActivityFromJson(json);

	Map<String, dynamic> toJson() => _$CartLineActivityToJson(this);

}