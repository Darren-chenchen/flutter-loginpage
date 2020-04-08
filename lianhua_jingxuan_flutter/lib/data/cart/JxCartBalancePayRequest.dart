import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartBalancePayRequest.g.dart';

@JsonSerializable()
class JxCartBalancePayRequest extends JxCartBaseRequest{
	//储值卡号
	String cardNum;
	//选择支付的金额
	double amount;
	//余额
	double balance;
	//事务ID
	String tranId;

	JxCartBalancePayRequest({
		this.cardNum,
		this.amount,
		this.balance,
		this.tranId
	});

	factory JxCartBalancePayRequest.fromJson(Map<String, dynamic> json) => _$JxCartBalancePayRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartBalancePayRequestToJson(this);

}