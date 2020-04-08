import 'package:json_annotation/json_annotation.dart';

part 'BPaymentPrepare.g.dart';

@JsonSerializable()
class BPaymentPrepare {
	//支付类型,可选WapAliPay，WapWeiXin, XcxWeiXin, XcxAliPay, AppWeiXin, AppAliPay
	String payType;
	//交易id
	String tranId;
	//支付金额，目标支付金额
	double amount;
	//终端号
	String terminalId;
	//终端信息
	String terminalParams;
	//wap支付成功跳转地址
	String returnUrl;
	//介质号,对于微信小程序预下单XcxWeiXin传微信openid,对于支付宝小程序传支付宝用户ID
	String mediumNumber;
	//客户端ip
	String clientIp;
	//微信平台APP应用ID
	String payAppId;

	BPaymentPrepare({
		this.payType,
		this.tranId,
		this.amount,
		this.terminalId,
		this.terminalParams,
		this.returnUrl,
		this.mediumNumber,
		this.clientIp,
		this.payAppId
	});

	factory BPaymentPrepare.fromJson(Map<String, dynamic> json) => _$BPaymentPrepareFromJson(json);

	Map<String, dynamic> toJson() => _$BPaymentPrepareToJson(this);

}