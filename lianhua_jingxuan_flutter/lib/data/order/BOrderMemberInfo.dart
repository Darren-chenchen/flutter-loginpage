import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/CodeType.dart';

part 'BOrderMemberInfo.g.dart';

@JsonSerializable()
class BOrderMemberInfo {
	//身份标识
	CodeType codeType;
	//手机号码,联华注册时必填
	String memberTel;
	//手机号码
	String mobile;
	//会员号(卡或手机号)
	String memberCode;
	//会员姓名
	String memberName;
	//会员等级
	String memberGrade;
	//会员生日
	String birthday;
	//余额
	double balance;
	//积分
	double memberScore;
	//会员ID
	String memberId;
	//会员卡号
	String cardNum;

	BOrderMemberInfo({
		this.codeType,
		this.memberTel,
		this.mobile,
		this.memberCode,
		this.memberName,
		this.memberGrade,
		this.birthday,
		this.balance,
		this.memberScore,
		this.memberId,
		this.cardNum
	});

	factory BOrderMemberInfo.fromJson(Map<String, dynamic> json) => _$BOrderMemberInfoFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderMemberInfoToJson(this);

}