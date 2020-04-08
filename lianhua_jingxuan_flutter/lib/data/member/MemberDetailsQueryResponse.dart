import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/ManageEmployee.dart';
import 'package:lianhua_jingxuan_flutter/data/member/ManageStore.dart';
import 'package:lianhua_jingxuan_flutter/data/member/RegisterBrand.dart';
import 'package:lianhua_jingxuan_flutter/data/member/RegisterChannel.dart';
import 'package:lianhua_jingxuan_flutter/data/member/RegisterEmployee.dart';
import 'package:lianhua_jingxuan_flutter/data/member/RegisterStore.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Score.dart';

part 'MemberDetailsQueryResponse.g.dart';

@JsonSerializable()
class MemberDetailsQueryResponse {
	//会员UUID, 会员唯一标识
	String memberUuid;
	//会员类型 1-会员 2-非会员
	String memberType;
	//会员状态 1.正常 2.冻结 3.合并 4.注销 5:过期
	String memberStatus;
	//会员号
	String memberNum;
	//姓名
	String name;
	//名字 如张三，这里应该填三
	String firstName;
	//姓 如张三，这里应该填张
	String lastName;
	//会员头像
	String memberHeadImg;
	//性别： M-男 F-女 U-未知
	String sex;
	//生日yyyy-MM-dd
	String birthday;
	//年龄
	String age;
	//手机号码
	String mobile;
	//电话号码
	String telephone;
	//传真号码
	String fax;
	//电子邮箱
	String email;
	//微信号
	String wechatNum;
	//是否关注微信 0-未关注 1-已关注
	String wechatFollow;
	//QQ号
	String qqNum;
	//证件类型：  1: 身份证 2: 港澳通行证 3: 台胞证 4: 外国护照 5:行驶证 6: 军官证 7: 其他
	String idType;
	//证件号码
	String idCard;
	//证件正面图片
	String idCardPositiveUrl;
	//证件反面图片
	String idCardOppositeUrl;
	//是否认证： 0-否 1-是 默认0
	String isCertification;
	//是否愿意成为品牌的会员 0-否 1-是
	String brandOption;
	//是否愿意成为集团的会员 0-否 1-是
	String corporateOption;
	//是否愿意接受邮件 0-否 1-是
	String emailOption;
	//是否愿意接受短信 0-否 1-是
	String smsOption;
	//是否愿意接受电话 0-否 1-是
	String phoneOption;
	//是否愿意接受微信 0-否 1-是
	String wechatOption;
	//是否愿意接受微信电子小票 0-否 1-是
	String wechatEticketOption;
	//是否愿意接受dm 0-否 1-是
	String dmOption;
	//电子邮箱是否有效 0-否 1-是
	String emailValid;
	//手机号码是否有效 0-否 1-是
	String mobileValid;
	//电话号码是否有效 0-否 1-是
	String telephoneValid;
	//是否黑名单： 默认0否，1是
	String isBlack;
	//是否测试账号： 默认0否，1是
	String isTester;
	//是否是员工0-否、1-是
	String isEmployee;
	//员工优惠金额
	String discountAmount;
	//员工折扣率
	String discountRate;
	//外部用户ID，用于数据迁移
	String extMemberId;
	//入会时间
	String registeDate;
	//员工工号
	double employeeCode;
	//渠道
	RegisterChannel registerChannel;
	//注册门店
	RegisterStore registerStore;
	//注册门店人员
	RegisterEmployee registerEmployee;
	//注册品牌
	RegisterBrand registerBrand;
	//管理门店
	ManageStore manageStore;
	//管理门店人员
	ManageEmployee manageEmployee;
	//积分清单 (Score)
	List<Score> scores;

	MemberDetailsQueryResponse({
		this.memberUuid,
		this.memberType,
		this.memberStatus,
		this.memberNum,
		this.name,
		this.firstName,
		this.lastName,
		this.memberHeadImg,
		this.sex,
		this.birthday,
		this.age,
		this.mobile,
		this.telephone,
		this.fax,
		this.email,
		this.wechatNum,
		this.wechatFollow,
		this.qqNum,
		this.idType,
		this.idCard,
		this.idCardPositiveUrl,
		this.idCardOppositeUrl,
		this.isCertification,
		this.brandOption,
		this.corporateOption,
		this.emailOption,
		this.smsOption,
		this.phoneOption,
		this.wechatOption,
		this.wechatEticketOption,
		this.dmOption,
		this.emailValid,
		this.mobileValid,
		this.telephoneValid,
		this.isBlack,
		this.isTester,
		this.isEmployee,
		this.discountAmount,
		this.discountRate,
		this.extMemberId,
		this.registeDate,
		this.employeeCode,
		this.registerChannel,
		this.registerStore,
		this.registerEmployee,
		this.registerBrand,
		this.manageStore,
		this.manageEmployee,
		this.scores
	});

	factory MemberDetailsQueryResponse.fromJson(Map<String, dynamic> json) => _$MemberDetailsQueryResponseFromJson(json);

	Map<String, dynamic> toJson() => _$MemberDetailsQueryResponseToJson(this);

}