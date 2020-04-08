import 'package:json_annotation/json_annotation.dart';

part 'UuidProm.g.dart';

@JsonSerializable()
class UuidProm {
	//商品行uuid
	String uuid;
	//是否是单品促销
	bool skuActivity;
	//活动ID
	String activityId;

	UuidProm({
		this.uuid,
		this.skuActivity,
		this.activityId
	});

	factory UuidProm.fromJson(Map<String, dynamic> json) => _$UuidPromFromJson(json);

	Map<String, dynamic> toJson() => _$UuidPromToJson(this);

}