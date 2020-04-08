import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/CodeQty.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderConsignee.dart';

part 'CreateOrderRequest.g.dart';

@JsonSerializable()
class CreateOrderRequest {
	//订单ID
	String uuid;
	//会员标识
	String memberId;
	//订单类型
	String type;
	//商品识别码与数量
	List<CodeQty> lines;
	//券码
	List<String> couponCodes;
	//收货人信息
	BOrderConsignee consignee;

	CreateOrderRequest({
		this.uuid,
		this.memberId,
		this.type,
		this.lines,
		this.couponCodes,
		this.consignee
	});

	factory CreateOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestFromJson(json);

	Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

}