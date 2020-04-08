import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/DeliveryType.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartSettleRequest.g.dart';

@JsonSerializable()
class JxCartSettleRequest extends JxCartBaseRequest{
	//配送方式
	DeliveryType deliveryType;

	JxCartSettleRequest({
		this.deliveryType
	});

	factory JxCartSettleRequest.fromJson(Map<String, dynamic> json) => _$JxCartSettleRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartSettleRequestToJson(this);

}