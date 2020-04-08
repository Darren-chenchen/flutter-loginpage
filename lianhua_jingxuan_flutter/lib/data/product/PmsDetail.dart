import 'package:json_annotation/json_annotation.dart';

part 'PmsDetail.g.dart';

@JsonSerializable()
class PmsDetail {
	//促销活动ID：用于通过ID筛选参与本活动的商品全集
	String activityId;
	//促销标签，比如：“满减”，“第2件5折”，“赠”
	String label;
	//促销计算时机：单品 或者 整单（购物车场景）
	String execOpportunity;
	//促销类型，比如：限时特惠
	String promCls;
	//促销开始时间[yyyy-MM-dd HH:mm:ss]
	String startTime;
	//促销结束时间[yyyy-MM-dd HH:mm:ss]
	String endTime;

	PmsDetail({
		this.activityId,
		this.label,
		this.execOpportunity,
		this.promCls,
		this.startTime,
		this.endTime
	});

	factory PmsDetail.fromJson(Map<String, dynamic> json) => _$PmsDetailFromJson(json);

	Map<String, dynamic> toJson() => _$PmsDetailToJson(this);

}