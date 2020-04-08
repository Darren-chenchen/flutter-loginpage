import 'package:json_annotation/json_annotation.dart';

part 'FilterParam.g.dart';

@JsonSerializable()
class FilterParam {
	String property;
	String value;

	FilterParam({
		this.property,
		this.value
	});

	factory FilterParam.fromJson(Map<String, dynamic> json) => _$FilterParamFromJson(json);

	Map<String, dynamic> toJson() => _$FilterParamToJson(this);

}