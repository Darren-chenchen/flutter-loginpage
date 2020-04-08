import 'package:json_annotation/json_annotation.dart';

part 'JxCartCoupon.g.dart';

@JsonSerializable()
class JxCartCoupon {
	//券号
	String code;
	//实际金额
	double paidAmount;
	//券名称
	String name;
	//券类型代码
	String typeCode;
	//券类型名称
	String typeName;
	//是否已使用
	bool used;
	//面额
	double faceValue;
	//有效期开始
	String beginDate;
	//有效期结束
	String endDate;
	//发券方平台代码
	String sendPlatformId;
	//发券方平台名称
	String sendPlatformName;
	//用券门槛
	double conditionValue;
	//用券形式,1=支付方式，0=优惠 
	int settleType;

	JxCartCoupon({
		this.code,
		this.paidAmount,
		this.name,
		this.typeCode,
		this.typeName,
		this.used,
		this.faceValue,
		this.beginDate,
		this.endDate,
		this.sendPlatformId,
		this.sendPlatformName,
		this.conditionValue,
		this.settleType
	});

	factory JxCartCoupon.fromJson(Map<String, dynamic> json) => _$JxCartCouponFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartCouponToJson(this);

}