import 'package:json_annotation/json_annotation.dart';

part 'BPaymentSubmit.g.dart';

@JsonSerializable()
class BPaymentSubmit {
	//支付类型
	String payType;
	//交易id
	String tranId;
	//金额
	double amount;
	//支付码
	String payCode;
	//卡号
	String cardNumber;
	//支付密码
	String password;
	//终端编号
	String terminalId;
	//机具管控参数
	String terminalParams;
	//微信人脸支付身份ID
	String userId;

	BPaymentSubmit({
		this.payType,
		this.tranId,
		this.amount,
		this.payCode,
		this.cardNumber,
		this.password,
		this.terminalId,
		this.terminalParams,
		this.userId
	});

	factory BPaymentSubmit.fromJson(Map<String, dynamic> json) => _$BPaymentSubmitFromJson(json);

	Map<String, dynamic> toJson() => _$BPaymentSubmitToJson(this);

}