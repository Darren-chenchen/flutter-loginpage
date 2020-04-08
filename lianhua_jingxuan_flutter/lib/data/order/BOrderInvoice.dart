import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BEntity.dart';

part 'BOrderInvoice.g.dart';

@JsonSerializable()
class BOrderInvoice extends BEntity{
	//订单id
	String owner;
	//开票系统流水号
	String tranNo;
	//开票url
	String url;
	//发票提取码
	String fetchCode;
	//开票状态
	String state;
	//用户填写的抬头
	String title;
	//用户填写的税号
	String taxCode;
	//开票失败原因
	String message;
	//发票代码
	String code;
	//发票号码
	String num;
	//开票日期
	String date;

	BOrderInvoice({
		this.owner,
		this.tranNo,
		this.url,
		this.fetchCode,
		this.state,
		this.title,
		this.taxCode,
		this.message,
		this.code,
		this.num,
		this.date
	});

	factory BOrderInvoice.fromJson(Map<String, dynamic> json) => _$BOrderInvoiceFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderInvoiceToJson(this);

}