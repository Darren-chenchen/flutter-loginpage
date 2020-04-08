import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderConsignee.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderCoupon.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderInvoice.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderLine.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderMemberInfo.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderParcel.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderPayment.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BOrderStateFlow.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BScoreDeduction.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BVersionedEntity.dart';

part 'BOrder.g.dart';

@JsonSerializable()
class BOrder extends BVersionedEntity{
	//购物车ID
	String cartId;
	//订单类型
	String type;
	//流水号
	String flowNo;
	//填单时间
	String created;
	//订单来源
	String appId;
	//失效时间
	String expireDate;
	//整单原价金额
	double rtlAmount;
	//整单优惠前的金额
	double baseAmount;
	//整单优惠后的金额
	double amount;
	//应付。优惠后的金额
	double realAmount;
	//剩余应付金额
	double remainAmount;
	//优惠金额
	double favAmount;
	//运费
	double freight;
	//包装费
	double packageAmt;
	//会员信息
	BOrderMemberInfo memberInfo;
	//商品明细集合
	List<BOrderLine> lines;
	//付款明细
	List<BOrderPayment> payments;
	//积分信息
	BScoreDeduction scoreDeduction;
	//券信息
	List<BOrderCoupon> coupons;
	//订单产生的积分
	double score;
	//发票信息
	String invoice;
	//订单状态:待支付CONFIRMED，已付款PAID，已发货DELIVERED，已完成FINISHED，已取消CANCELED，已核验CHECKED
	String state;
	//门店ID
	String shop;
	//门店名称
	String shopName;
	//核验码
	String checkCode;
	//停车券号
	String parkingBarcode;
	//发票提取码
	String invoiceCode;
	//打印次数
	int printCount;
	//销售单流水号
	String saleFlowNo;
	//设备ID
	String deviceId;
	//设备号
	String posNo;
	//是否支付中
	bool paying;
	//包裹信息
	List<BOrderParcel> parcels;
	//发票信息
	BOrderInvoice invoiceInfo;
	//收货人信息
	BOrderConsignee consignee;
	//标识是否已评价
	bool evaluated;
	//退款标识：NULL：无；REFUNDING：退款中；FINISHED：退款成功。
	String rtnFlag;
	//配送方式; NORMAL:普通配送)
	String deliveryType;
	//用券金额
	double couponAmt;
	//积分抵扣金额
	double scoreDeductionAmt;
	//订单状态变更流水
	List<BOrderStateFlow> stateFlows;

	BOrder({
		this.cartId,
		this.type,
		this.flowNo,
		this.created,
		this.appId,
		this.expireDate,
		this.rtlAmount,
		this.baseAmount,
		this.amount,
		this.realAmount,
		this.remainAmount,
		this.favAmount,
		this.freight,
		this.packageAmt,
		this.memberInfo,
		this.lines,
		this.payments,
		this.scoreDeduction,
		this.coupons,
		this.score,
		this.invoice,
		this.state,
		this.shop,
		this.shopName,
		this.checkCode,
		this.parkingBarcode,
		this.invoiceCode,
		this.printCount,
		this.saleFlowNo,
		this.deviceId,
		this.posNo,
		this.paying,
		this.parcels,
		this.invoiceInfo,
		this.consignee,
		this.evaluated,
		this.rtnFlag,
		this.deliveryType,
		this.couponAmt,
		this.scoreDeductionAmt,
		this.stateFlows
	});

	factory BOrder.fromJson(Map<String, dynamic> json) => _$BOrderFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderToJson(this);

}