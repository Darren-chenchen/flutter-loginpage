import 'package:json_annotation/json_annotation.dart';

part 'SortParam.g.dart';

@JsonSerializable()
class SortParam {
	String property;
	String direction;

	SortParam({
		this.property,
		this.direction
	});

	factory SortParam.fromJson(Map<String, dynamic> json) => _$SortParamFromJson(json);

	Map<String, dynamic> toJson() => _$SortParamToJson(this);

}