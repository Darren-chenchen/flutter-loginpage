import 'package:json_annotation/json_annotation.dart';

part 'MemberEquity.g.dart';

@JsonSerializable()
class MemberEquity {
	//积分余额
	double scoreBalance;
	//可用优惠券数量
	int couponQty;

	MemberEquity({
		this.scoreBalance,
		this.couponQty
	});

	factory MemberEquity.fromJson(Map<String, dynamic> json) => _$MemberEquityFromJson(json);

	Map<String, dynamic> toJson() => _$MemberEquityToJson(this);

}