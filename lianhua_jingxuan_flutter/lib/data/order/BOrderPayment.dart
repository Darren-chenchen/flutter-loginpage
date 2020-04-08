import 'package:json_annotation/json_annotation.dart';

part 'BOrderPayment.g.dart';

@JsonSerializable()
class BOrderPayment {
	//支付方式代码
	String payType;
	//支付账户
	String account;
	//支付显示金额
	double faceAmount;
	//原支付金额
	double amount;
	//付款方式优惠金额
	double favAmount;
	//支付渠道标识
	String payMethodCode;
	//支付渠道名称
	String payMethodName;
	//第三方支付流水号
	String payNo;
	//业务流水号
	String orderNumber;
	//支付交易ID
	String tranId;
	//支付响应
	String response;
	//使用了多少积分
	double score;
	//支付状态,unpaid,paying,paid,failure
	String state;

	BOrderPayment({
		this.payType,
		this.account,
		this.faceAmount,
		this.amount,
		this.favAmount,
		this.payMethodCode,
		this.payMethodName,
		this.payNo,
		this.orderNumber,
		this.tranId,
		this.response,
		this.score,
		this.state
	});

	factory BOrderPayment.fromJson(Map<String, dynamic> json) => _$BOrderPaymentFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderPaymentToJson(this);

}