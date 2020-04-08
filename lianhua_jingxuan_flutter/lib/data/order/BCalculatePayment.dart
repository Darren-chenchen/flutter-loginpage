import 'package:json_annotation/json_annotation.dart';

part 'BCalculatePayment.g.dart';

@JsonSerializable()
class BCalculatePayment {
	//支付类型
	String payType;
	//原支付金额
	double amount;
	//支付账户余额
	double balance;
	//支付账号
	String account;

	BCalculatePayment({
		this.payType,
		this.amount,
		this.balance,
		this.account
	});

	factory BCalculatePayment.fromJson(Map<String, dynamic> json) => _$BCalculatePaymentFromJson(json);

	Map<String, dynamic> toJson() => _$BCalculatePaymentToJson(this);

}