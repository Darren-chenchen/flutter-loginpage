import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/DeliveryType.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderConsignee.dart';

part 'JxCartSubmitRequest.g.dart';

@JsonSerializable()
class JxCartSubmitRequest extends JxCartBaseRequest{
	//订单id,此字段在购物车阶段已返回，用于提交请求支持幂等
	String uuid;
	//运费
	double freight;
	//包装费
	double packageAmt;
	//配送方式
	DeliveryType deliveryType = DeliveryType.SELF_PICK_UP;
	//设备id
	String deviceId;
	//收货人信息
	BOrderConsignee consignee;

	JxCartSubmitRequest({
		this.uuid,
		this.freight,
		this.packageAmt,
		this.deliveryType,
		this.deviceId,
		this.consignee
	});

	factory JxCartSubmitRequest.fromJson(Map<String, dynamic> json) => _$JxCartSubmitRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartSubmitRequestToJson(this);

}