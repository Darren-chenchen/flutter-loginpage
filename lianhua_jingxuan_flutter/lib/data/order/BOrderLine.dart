import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BEntity.dart';

part 'BOrderLine.g.dart';

@JsonSerializable()
class BOrderLine extends BEntity{
	//行号
	int lineNo;
	//输入码
	String inputCode;
	//解析后的商品输入码
	String gdInputCode;
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
	//标识
	String gdTag;
	//图片地址
	String imgUrl;
	//部门代码
	String deptCode;
	//供应商代码
	String vendorCode;
	//是否可变价
	bool priceVariable;
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
	//可变价类型
	int prcVarType;
	//剩余可退数量
	double availableReturnQty;

	BOrderLine({
		this.lineNo,
		this.inputCode,
		this.gdInputCode,
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
		this.gdTag,
		this.imgUrl,
		this.deptCode,
		this.vendorCode,
		this.priceVariable,
		this.unit,
		this.sortCode,
		this.effective,
		this.invQty,
		this.selected,
		this.prcVarType,
		this.availableReturnQty
	});

	factory BOrderLine.fromJson(Map<String, dynamic> json) => _$BOrderLineFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderLineToJson(this);

}