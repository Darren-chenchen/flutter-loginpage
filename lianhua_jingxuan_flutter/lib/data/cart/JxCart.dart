import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartCoupon.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartLine.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartPayment.dart';

part 'JxCart.g.dart';

@JsonSerializable()
class JxCart {
	//设备号
	String posNo;
	//购物车ID
	String cartId;
	//用券金额
	double couponAmt;
	//整单原价金额
	double rtlAmount;
	//整单优惠前的金额
	double baseAmount;
	//整单优惠后的金额
	double amount;
	//应付。优惠后的金额
	double realAmount;
	//优惠金额
	double favAmount;
	//商品明细
	List<JxCartLine> lines;
	//付款明细
	List<JxCartPayment> payments;
	//券信息
	List<JxCartCoupon> coupons;

	JxCart({
		this.posNo,
		this.cartId,
		this.couponAmt,
		this.rtlAmount,
		this.baseAmount,
		this.amount,
		this.realAmount,
		this.favAmount,
		this.lines,
		this.payments,
		this.coupons
	});

	factory JxCart.fromJson(Map<String, dynamic> json) => _$JxCartFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartToJson(this);

}