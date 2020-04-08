import 'package:json_annotation/json_annotation.dart';

part 'BPaymentPay.g.dart';

@JsonSerializable()
class BPaymentPay {
	//订单ID
	String orderId;
	//交易ID
	String tranId;
	//余额,元。只有卡支付才有余额
	double balance;
	//支付地址
	String payUrl;
	//第三方平台业务流水
	String payNo;
	//支付状态:0成功、1失败、2未知
	int payState;
	//辅助信息说明，如支付成功，支付失败等
	String payMessage;
	//发起的支付金额:amount=payAmount+favAmount
	double amount;
	//实际支付金额
	double payAmount;
	//支付信息，小程序支付返回
	String payInfo;
	//预下单ID
	String preOrderId;
	//总的优惠金额
	double favAmount;
	//第三方支付系统承担优惠总额
	double favAmountChannel;
	//商家承担优惠总额
	double favAmountMerchant;
	//支付账号
	String account;
	//签购单信息
	String printInfo;

	BPaymentPay({
		this.orderId,
		this.tranId,
		this.balance,
		this.payUrl,
		this.payNo,
		this.payState,
		this.payMessage,
		this.amount,
		this.payAmount,
		this.payInfo,
		this.preOrderId,
		this.favAmount,
		this.favAmountChannel,
		this.favAmountMerchant,
		this.account,
		this.printInfo
	});

	factory BPaymentPay.fromJson(Map<String, dynamic> json) => _$BPaymentPayFromJson(json);

	Map<String, dynamic> toJson() => _$BPaymentPayToJson(this);

}