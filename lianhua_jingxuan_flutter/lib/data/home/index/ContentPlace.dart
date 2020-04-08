import 'package:json_annotation/json_annotation.dart';

part 'ContentPlace.g.dart';

@JsonSerializable()
class ContentPlace {
	//租户
	String tenant;
	//ID
	String id;
	//渠道
	String channel;
	//资源代码
	String code;
	//图片Url
	String imageUrl;
	//名称
	String name;
	//序号
	int orderNo;

	ContentPlace({
		this.tenant,
		this.id,
		this.channel,
		this.code,
		this.imageUrl,
		this.name,
		this.orderNo
	});

	factory ContentPlace.fromJson(Map<String, dynamic> json) => _$ContentPlaceFromJson(json);

	Map<String, dynamic> toJson() => _$ContentPlaceToJson(this);

}