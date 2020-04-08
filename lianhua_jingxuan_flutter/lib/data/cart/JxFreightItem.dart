import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/DeliveryType.dart';

part 'JxFreightItem.g.dart';

@JsonSerializable()
class JxFreightItem {
	//配送方式, SELF_PICK_UP表示自提，HOME_DELIVERY表示配送到家
	DeliveryType deliveryType = DeliveryType.SELF_PICK_UP;
	//金额
	double amount;

	JxFreightItem({
		this.deliveryType,
		this.amount
	});

	factory JxFreightItem.fromJson(Map<String, dynamic> json) => _$JxFreightItemFromJson(json);

	Map<String, dynamic> toJson() => _$JxFreightItemToJson(this);

}