import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/index/ContentDeliveryCycleCondition.dart';

part 'ContentDelivery.g.dart';

@JsonSerializable()
class ContentDelivery {
	//租户
	String tenant;
	//ID
	String id;
	//名称
	String name;
	//图片
	String image;
	//资源位代码
	String placeCode;
	//序号
	int placeNo;
	//是否周期
	bool cycle;
	//周期条件
	List<ContentDeliveryCycleCondition> cycleConditions;
	//起始时间
	String begin;
	//截止时间
	String end;
	//内容
	String content;
	//动作
	String key;
	//停留时间
	int stayTime;
	//备注
	String remark;
	//投放目标类型
	String targetType;
	//投放目标
	List<String> targets;
	//状态
	bool enabled;

	ContentDelivery({
		this.tenant,
		this.id,
		this.name,
		this.image,
		this.placeCode,
		this.placeNo,
		this.cycle,
		this.cycleConditions,
		this.begin,
		this.end,
		this.content,
		this.key,
		this.stayTime,
		this.remark,
		this.targetType,
		this.targets,
		this.enabled
	});

	factory ContentDelivery.fromJson(Map<String, dynamic> json) => _$ContentDeliveryFromJson(json);

	Map<String, dynamic> toJson() => _$ContentDeliveryToJson(this);

}