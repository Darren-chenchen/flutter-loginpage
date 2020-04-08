import 'package:json_annotation/json_annotation.dart';

part 'JxIndex.g.dart';

@JsonSerializable()
class JxIndex {
	//购物车内已选中商品数量 sum(line.qty)
	int cartTotalQty;
	//待付款订单数量
	int confirmedOrderCount;
	//待收货订单数量
	int deliveredOrderCount;
	//已收货订单数量
	int receivedOrderCount;

	JxIndex({
		this.cartTotalQty,
		this.confirmedOrderCount,
		this.deliveredOrderCount,
		this.receivedOrderCount
	});

	factory JxIndex.fromJson(Map<String, dynamic> json) => _$JxIndexFromJson(json);

	Map<String, dynamic> toJson() => _$JxIndexToJson(this);

}