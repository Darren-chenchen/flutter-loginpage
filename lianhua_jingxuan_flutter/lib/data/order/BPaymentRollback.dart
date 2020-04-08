import 'package:json_annotation/json_annotation.dart';

part 'BPaymentRollback.g.dart';

@JsonSerializable()
class BPaymentRollback {
	//支付类型
	String payType;
	//交易id
	String tranId;

	BPaymentRollback({
		this.payType,
		this.tranId
	});

	factory BPaymentRollback.fromJson(Map<String, dynamic> json) => _$BPaymentRollbackFromJson(json);

	Map<String, dynamic> toJson() => _$BPaymentRollbackToJson(this);

}