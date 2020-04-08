import 'package:json_annotation/json_annotation.dart';

part 'BOrderStateFlow.g.dart';

@JsonSerializable()
class BOrderStateFlow {
	//CREATE:创建
//PAY:付款
//DELIVER:发货
//FINISH:完成
	String action;
	String time;

	BOrderStateFlow({
		this.action,
		this.time
	});

	factory BOrderStateFlow.fromJson(Map<String, dynamic> json) => _$BOrderStateFlowFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderStateFlowToJson(this);

}