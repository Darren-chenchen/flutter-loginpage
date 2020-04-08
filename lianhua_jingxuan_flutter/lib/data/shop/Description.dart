import 'package:json_annotation/json_annotation.dart';

part 'Description.g.dart';

@JsonSerializable()
class Description {
	//排序
	int order;
	//类型
	String type;
	//内容
	String content;

	Description();

	factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);

	Map<String, dynamic> toJson() => _$DescriptionToJson(this);

}