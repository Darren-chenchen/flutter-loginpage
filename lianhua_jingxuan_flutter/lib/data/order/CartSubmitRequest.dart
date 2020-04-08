import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderConsignee.dart';

part 'CartSubmitRequest.g.dart';

@JsonSerializable()
class CartSubmitRequest {
	//收货人信息
	BOrderConsignee consignee;

	CartSubmitRequest({
		this.consignee
	});

	factory CartSubmitRequest.fromJson(Map<String, dynamic> json) => _$CartSubmitRequestFromJson(json);

	Map<String, dynamic> toJson() => _$CartSubmitRequestToJson(this);

}