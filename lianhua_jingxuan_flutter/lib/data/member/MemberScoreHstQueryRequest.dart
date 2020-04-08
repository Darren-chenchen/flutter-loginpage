import 'package:json_annotation/json_annotation.dart';

part 'MemberScoreHstQueryRequest.g.dart';

@JsonSerializable()
class MemberScoreHstQueryRequest {
	//查询时间-必填
	String tranTime;
	//终端号
	String terminal;
	//门店代码-必填
	String storeCode;
	//识别类型，0-实体卡号，4-虚拟卡号-必填
	int accountType;
	//识别码，根据识别类型确定值-必填
	String accountCode;
	//取值范围5-100-必填
	int pageSize;
	//>=1-必填
	int pageNum;

	MemberScoreHstQueryRequest({
		this.tranTime,
		this.terminal,
		this.storeCode,
		this.accountType,
		this.accountCode,
		this.pageSize,
		this.pageNum
	});

	factory MemberScoreHstQueryRequest.fromJson(Map<String, dynamic> json) => _$MemberScoreHstQueryRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberScoreHstQueryRequestToJson(this);

}