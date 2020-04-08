import 'package:json_annotation/json_annotation.dart';

part 'BCouponInfo.g.dart';

@JsonSerializable()
class BCouponInfo {
	//券号
	String code;
	//券名称
	String name;
	//券类型代码
	String typeCode;
	//券类型名称
	String typeName;
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

	BCouponInfo({
		this.code,
		this.name,
		this.typeCode,
		this.typeName,
		this.faceValue,
		this.beginDate,
		this.endDate,
		this.sendPlatformId,
		this.sendPlatformName,
		this.conditionValue,
		this.settleType
	});

	factory BCouponInfo.fromJson(Map<String, dynamic> json) => _$BCouponInfoFromJson(json);

	Map<String, dynamic> toJson() => _$BCouponInfoToJson(this);

}