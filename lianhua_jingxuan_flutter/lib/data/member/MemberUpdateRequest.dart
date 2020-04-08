import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/ReceiveAddress.dart';

part 'MemberUpdateRequest.g.dart';

@JsonSerializable()
class MemberUpdateRequest {
	//交易号，要求唯一
	String tranId;
	//查询时间
	String tranTime;
	//识别类型，0-实体卡号，2-会员号，4-虚拟卡号
	int accountType;
	//识别码，根据识别类型确定值
	String accountCode;
	//年龄
	int age;
	//性别： M-男 F-女 U-未知
	String sex;
	//手机号码
	String mobile;
	//收货地址列表
	List<ReceiveAddress> addrssList;

	MemberUpdateRequest({
		this.tranId,
		this.tranTime,
		this.accountType,
		this.accountCode,
		this.age,
		this.sex,
		this.mobile,
		this.addrssList
	});

	factory MemberUpdateRequest.fromJson(Map<String, dynamic> json) => _$MemberUpdateRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberUpdateRequestToJson(this);

}