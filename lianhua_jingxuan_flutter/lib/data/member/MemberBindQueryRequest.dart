import 'package:json_annotation/json_annotation.dart';

part 'MemberBindQueryRequest.g.dart';

@JsonSerializable()
class MemberBindQueryRequest {
	//查询时间
	String tranTime;
	//终端号
	String terminal;
	//门店代码
	String storeCode;
	//识别类型，1-手机号-必填
	int accountType;
	//识别码，根据识别类型确定值-必填
	String accountCode;
	//渠道类型(可默认为获取token的账号)
	String channelType;
	//用户在某一渠道的唯一标识-必填
	String uid;
	//会员卡类型(lh)-必填
	String cardType;

	MemberBindQueryRequest({
		this.tranTime,
		this.terminal,
		this.storeCode,
		this.accountType,
		this.accountCode,
		this.channelType,
		this.uid,
		this.cardType
	});

	factory MemberBindQueryRequest.fromJson(Map<String, dynamic> json) => _$MemberBindQueryRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberBindQueryRequestToJson(this);

}