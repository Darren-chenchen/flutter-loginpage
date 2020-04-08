import 'package:json_annotation/json_annotation.dart';

part 'JxCartPayment.g.dart';

@JsonSerializable()
class JxCartPayment {
	//支付方式代码
	String payType;
	//支付显示金额
	double faceAmount;
	//支付金额
	double amount;
	//支付交易ID
	String tranId;
	//支付状态,unpaid,paying,paid,failure
	String state;

	JxCartPayment({
		this.payType,
		this.faceAmount,
		this.amount,
		this.tranId,
		this.state
	});

	factory JxCartPayment.fromJson(Map<String, dynamic> json) => _$JxCartPaymentFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartPaymentToJson(this);

}