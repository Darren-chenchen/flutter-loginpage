import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/EquityDetail.dart';

part 'Equity.g.dart';

@JsonSerializable()
class Equity {
	//权益项类型
	String equityType;
	//权益项名称
	String equityName;
	//权益项来源1-TMS券、2-其他来源
	String equitySource;
	//有值会员权益列表 (Equity)
	List<EquityDetail> equityDetails;
	//卡类型
	String cardType;
	//卡号
	String cardNo;
	//生效开始时间 yyyy-MM-dd HH:mm:ss 注：券权益没有该值 
	String beginDate;
	//生效截止时间 yyyy-MM-dd HH:mm:ss注：券权益没有该值
	String endDate;
	//失效状态 1-正常 3-失效
	String status;

	Equity({
		this.equityType,
		this.equityName,
		this.equitySource,
		this.equityDetails,
		this.cardType,
		this.cardNo,
		this.beginDate,
		this.endDate,
		this.status
	});

	factory Equity.fromJson(Map<String, dynamic> json) => _$EquityFromJson(json);

	Map<String, dynamic> toJson() => _$EquityToJson(this);

}