import 'package:json_annotation/json_annotation.dart';

part 'MemberCardAndBalanceResponse.g.dart';

@JsonSerializable()
class MemberCardAndBalanceResponse {
	//卡余额
	double balance;
	//实体卡号
	String physicalCardNum;

	MemberCardAndBalanceResponse({
		this.balance,
		this.physicalCardNum
	});

	factory MemberCardAndBalanceResponse.fromJson(Map<String, dynamic> json) => _$MemberCardAndBalanceResponseFromJson(json);

	Map<String, dynamic> toJson() => _$MemberCardAndBalanceResponseToJson(this);

}