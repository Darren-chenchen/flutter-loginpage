import 'package:json_annotation/json_annotation.dart';

part 'ContentDeliveryFilter.g.dart';

@JsonSerializable()
class ContentDeliveryFilter {
	//开始日期小于等于
	String dateBeginLtEq;
	//结束日期大于等于
	String dateEndGtEq;
	//时间段开始小时小于等于
	int hourBeginLtEq;
	//时间段结束小时大于等于
	int hourEndGtEq;
	//时间段开始分钟小于等于
	int minuteBeginLtEq;
	//时间段结束分钟大于等于
	int minuteEndGtEq;
	//资源位id
	String placeIdEq;
	//源位序号
	int placeNoEq;
	//状态
	bool enable;

	ContentDeliveryFilter({
		this.dateBeginLtEq,
		this.dateEndGtEq,
		this.hourBeginLtEq,
		this.hourEndGtEq,
		this.minuteBeginLtEq,
		this.minuteEndGtEq,
		this.placeIdEq,
		this.placeNoEq,
		this.enable
	});

	factory ContentDeliveryFilter.fromJson(Map<String, dynamic> json) => _$ContentDeliveryFilterFromJson(json);

	Map<String, dynamic> toJson() => _$ContentDeliveryFilterToJson(this);

}