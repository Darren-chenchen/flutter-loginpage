import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Score.dart';

part 'MemberRegisterResponse.g.dart';

@JsonSerializable()
class MemberRegisterResponse {
	//会员UUID, 会员唯一标识
	String memberUuid;
	//会员号
	String memberNum;
	//会员姓名
	String name;
	//yyyy-MM-dd
	String birthday;
	//是否是员工0-否、1-是
	String isEmployee;
	//是否享有员工优惠0-否、1-是。当isEmployee为1时必传
	double employeeDiscount;
	//员工折扣率0.00-1.00，两位小数。当employeeDiscount为1时必传
	double discountRatio;
	//员工卡可用额度isEmployee为1时必传
	double availableAmount;
	String mobile;
	String userId;
	String token;
	String memberHeadImg;
	//积分清单 (Score)
	List<Score> scores;

	MemberRegisterResponse({
		this.memberUuid,
		this.memberNum,
		this.name,
		this.token,
		this.memberHeadImg,
		this.userId,
		this.birthday,
		this.isEmployee,
		this.employeeDiscount,
		this.discountRatio,
		this.mobile,
		this.availableAmount,
		this.scores
	});

	factory MemberRegisterResponse.fromJson(Map<String, dynamic> json) => _$MemberRegisterResponseFromJson(json);

	Map<String, dynamic> toJson() => _$MemberRegisterResponseToJson(this);

}