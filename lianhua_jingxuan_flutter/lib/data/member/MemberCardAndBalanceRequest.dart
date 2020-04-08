import 'package:json_annotation/json_annotation.dart';

part 'MemberCardAndBalanceRequest.g.dart';

@JsonSerializable()
class MemberCardAndBalanceRequest {
	//终端号
	String terminal;
	//门店代码
	String storeCode;
	//识别类型，0-卡号，1-手机号，2-会员号
	int accountType;
	//识别码，根据识别类型确定值
	String accountCode;

	MemberCardAndBalanceRequest({
		this.terminal,
		this.storeCode,
		this.accountType,
		this.accountCode
	});

	factory MemberCardAndBalanceRequest.fromJson(Map<String, dynamic> json) => _$MemberCardAndBalanceRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberCardAndBalanceRequestToJson(this);

}