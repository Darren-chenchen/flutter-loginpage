import 'package:json_annotation/json_annotation.dart';

part 'BPaymentQuery.g.dart';

@JsonSerializable()
class BPaymentQuery {
	//支付类型
	String payType;
	//交易id
	String tranId;

	BPaymentQuery({
		this.payType,
		this.tranId
	});

	factory BPaymentQuery.fromJson(Map<String, dynamic> json) => _$BPaymentQueryFromJson(json);

	Map<String, dynamic> toJson() => _$BPaymentQueryToJson(this);

}