import 'package:json_annotation/json_annotation.dart';

part 'MemberAllChannelQueryRequest.g.dart';

@JsonSerializable()
class MemberAllChannelQueryRequest {
	//查询时间
	String tranTime;
	//终端号
	String terminal;
	//门店代码
	String storeCode;
	//识别类型，0-卡号，1-手机号，2-会员号，3-身份证号，4-虚拟卡号，5-载体id
	int accountType;
	//识别码，根据识别类型确定值
	String accountCode;
	//accountType为5时必传
	String channelType;

	MemberAllChannelQueryRequest({
		this.tranTime,
		this.terminal,
		this.storeCode,
		this.accountType,
		this.accountCode,
		this.channelType
	});

	factory MemberAllChannelQueryRequest.fromJson(Map<String, dynamic> json) => _$MemberAllChannelQueryRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberAllChannelQueryRequestToJson(this);

}