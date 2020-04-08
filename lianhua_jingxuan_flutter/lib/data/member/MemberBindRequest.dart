import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/Account.dart';

part 'MemberBindRequest.g.dart';

@JsonSerializable()
class MemberBindRequest {
	//交易流水号，重复请求识别标识
	String tranId;
	//查询时间
	String tranTime;
	//渠道类型(可默认为获取token的账号)
	String channelType;
	//用户在某一渠道的唯一标识
	String uid;
	//识别账户
	List<Account> accounts;

	MemberBindRequest({
		this.tranId,
		this.tranTime,
		this.channelType,
		this.uid,
		this.accounts
	});

	factory MemberBindRequest.fromJson(Map<String, dynamic> json) => _$MemberBindRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberBindRequestToJson(this);

}