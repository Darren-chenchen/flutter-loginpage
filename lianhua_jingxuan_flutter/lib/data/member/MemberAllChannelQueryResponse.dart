import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Equity.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Score.dart';

part 'MemberAllChannelQueryResponse.g.dart';

@JsonSerializable()
class MemberAllChannelQueryResponse {
	//会员UUID, 会员唯一标识
	String memberUuid;
	//会员号
	String memberNum;
	//会员姓名
	String name;
	//yyyy-MM-dd
	String birthday;
	//积分清单 (Score)
	List<Score> scores;
	//是否是员工0-否、1-是
	String isEmployee;
	//是否享有员工优惠0-否、1-是。当isEmployee为1时必传
	double employeeDiscount;
	//员工折扣率0.00-1.00，两位小数。当employeeDiscount为1时必传
	double discountRatio;
	//员工卡可用额度isEmployee为1时必传
	double availableAmount;
	//有值会员权益列表 (Equity)
	List<Equity> equities;

	MemberAllChannelQueryResponse({
		this.memberUuid,
		this.memberNum,
		this.name,
		this.birthday,
		this.scores,
		this.isEmployee,
		this.employeeDiscount,
		this.discountRatio,
		this.availableAmount,
		this.equities
	});

	factory MemberAllChannelQueryResponse.fromJson(Map<String, dynamic> json) => _$MemberAllChannelQueryResponseFromJson(json);

	Map<String, dynamic> toJson() => _$MemberAllChannelQueryResponseToJson(this);

}