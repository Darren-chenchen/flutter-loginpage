import 'package:json_annotation/json_annotation.dart';

part 'ContentTemplateFilter.g.dart';

@JsonSerializable()
class ContentTemplateFilter {
	//关键字
	String keyword;
	//内容资源位代码等于
	String placeIdEq;
	//模板更新时间起始于
	String updateGt;
	//模板更新时间截止于
	String updateLt;
	//模板创建时间起始于
	String createGt;
	//模板创建时间截止于
	String createLt;

	ContentTemplateFilter({
		this.keyword,
		this.placeIdEq,
		this.updateGt,
		this.updateLt,
		this.createGt,
		this.createLt
	});

	factory ContentTemplateFilter.fromJson(Map<String, dynamic> json) => _$ContentTemplateFilterFromJson(json);

	Map<String, dynamic> toJson() => _$ContentTemplateFilterToJson(this);

}