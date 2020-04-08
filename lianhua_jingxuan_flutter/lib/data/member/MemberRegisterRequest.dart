import 'package:json_annotation/json_annotation.dart';

part 'MemberRegisterRequest.g.dart';

@JsonSerializable()
class MemberRegisterRequest {
	//交易号，要求唯一
	String tranId;
	//查询时间
	String tranTime;
	//姓名
	String name;
	//名字 如张三，这里应该填三
	String firstName;
	//姓 如张三，这里应该填张
	String lastName;
	//昵称
	String nickname;
	//性别： M-男 F-女 U-未知
	String sex;
	//生日如： 2017-01-10
	String birthday;
	//手机号码
	String mobile;
	//电话号码 如座机：123-1234567
	String telephone;
	//电子邮箱
	String email;
	//微信号
	String wechatNum;
	//QQ号
	String qqNum;
	//证件类型：  1: 身份证 2: 港澳通行证 3: 台胞证 4: 外国护照 5:行驶证 6: 军官证 7: 其他
	int idType;
	//证件号码
	String idCard;
	//是否愿意成为品牌的会员 0-否 1-是
	int brandOption;
	//是否愿意成为集团的会员 0-否 1-是
	int corporateOption;
	//是否愿意接受邮件 0-否 1-是
	int emailOption;
	//是否愿意接受短信 0-否 1-是
	int smsOption;
	//是否愿意接受微信电子小票 0-否 1-是
	int wechatEticketOption;
	//民族
	int ethnicGroup;
	//会员卡类型(lh)
	String cardType;
	//备注
	int remark;

	MemberRegisterRequest({
		this.tranId,
		this.tranTime,
		this.name,
		this.firstName,
		this.lastName,
		this.nickname,
		this.sex,
		this.birthday,
		this.mobile,
		this.telephone,
		this.email,
		this.wechatNum,
		this.qqNum,
		this.idType,
		this.idCard,
		this.brandOption,
		this.corporateOption,
		this.emailOption,
		this.smsOption,
		this.wechatEticketOption,
		this.ethnicGroup,
		this.cardType,
		this.remark
	});

	factory MemberRegisterRequest.fromJson(Map<String, dynamic> json) => _$MemberRegisterRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberRegisterRequestToJson(this);

}