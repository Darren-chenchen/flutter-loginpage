import 'package:json_annotation/json_annotation.dart';

part 'ContentDeliveryCycleCondition.g.dart';

@JsonSerializable()
class ContentDeliveryCycleCondition {
	//序号
	int orderNo;
	//起始小时
	int hourBegin;
	//起始分钟
	int minuteBegin;
	//截止小时
	int hourEnd;
	//截止分钟
	int minuteEnd;

	ContentDeliveryCycleCondition({
		this.orderNo,
		this.hourBegin,
		this.minuteBegin,
		this.hourEnd,
		this.minuteEnd
	});

	factory ContentDeliveryCycleCondition.fromJson(Map<String, dynamic> json) => _$ContentDeliveryCycleConditionFromJson(json);

	Map<String, dynamic> toJson() => _$ContentDeliveryCycleConditionToJson(this);

}