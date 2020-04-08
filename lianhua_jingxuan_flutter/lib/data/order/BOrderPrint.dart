import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrder.dart';

part 'BOrderPrint.g.dart';

@JsonSerializable()
class BOrderPrint {
	//小票信息, 文本格式，前端直接打印
	String ticketInfo;
	//订单
	BOrder data;
	//printTip
	String printTip;

	BOrderPrint({
		this.ticketInfo,
		this.data,
		this.printTip
	});

	factory BOrderPrint.fromJson(Map<String, dynamic> json) => _$BOrderPrintFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderPrintToJson(this);

}