import 'package:json_annotation/json_annotation.dart';

part 'ContentTemplate.g.dart';

@JsonSerializable()
class ContentTemplate {
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
	//资源位名称
	String placeName;
	//备注
	String remark;
	//内容
	String content;

	ContentTemplate({
		this.tenant,
		this.id,
		this.name,
		this.image,
		this.placeCode,
		this.placeName,
		this.remark,
		this.content
	});

	factory ContentTemplate.fromJson(Map<String, dynamic> json) => _$ContentTemplateFromJson(json);

	Map<String, dynamic> toJson() => _$ContentTemplateToJson(this);

}