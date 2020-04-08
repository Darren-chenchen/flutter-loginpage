import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/CartLineActivity.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/DeliveryType.dart';

part 'JxCartLine.g.dart';

@JsonSerializable()
class JxCartLine {
	//行号
	int lineNo;
	//输入码
	String inputCode;
	//输入码类型:
	int inputType;
	//商品代码
	String gdCode;
	//商品名称
	String gdName;
	//商品ID
	String gdGid;
	//数量
	double qty;
	//价格，促销后的价格
	double price;
	//金额 price * qty
	double amount;
	//行应付金额
	double realAmt;
	//标准售价
	double rtlPrc;
	//会员价
	double mbrPrice;
	//规格
	double qpc;
	//规格描述
	String qpcStr;
	//条码
	String barcode;
	//是否散称商品
	bool weightUnit;
	//保质期
	String expireDate;
	//图片地址
	String imgUrl;
	//单位
	String unit;
	//类别
	String sortCode;
	//是否生效
	bool effective;
	//库存,仅在购物车阶段展示
	double invQty;
	//是否已勾选
	bool selected;
	//配送方式
	DeliveryType deliveryType = DeliveryType.NORMAL;
	//当前参与的活动信息(整单或预售等)
	CartLineActivity activity;
	//当前参与的单品促销信息
	CartLineActivity skuActivity;
	//是否买赠商品
	bool gift;
	//赠品来源活动ID
	String giftActivityId;

	JxCartLine({
		this.lineNo,
		this.inputCode,
		this.inputType,
		this.gdCode,
		this.gdName,
		this.gdGid,
		this.qty,
		this.price,
		this.amount,
		this.realAmt,
		this.rtlPrc,
		this.mbrPrice,
		this.qpc,
		this.qpcStr,
		this.barcode,
		this.weightUnit,
		this.expireDate,
		this.imgUrl,
		this.unit,
		this.sortCode,
		this.effective,
		this.invQty,
		this.selected,
		this.deliveryType,
		this.activity,
		this.skuActivity,
		this.gift,
		this.giftActivityId
	});

	factory JxCartLine.fromJson(Map<String, dynamic> json) => _$JxCartLineFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartLineToJson(this);

}