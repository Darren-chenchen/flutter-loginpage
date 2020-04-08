import 'package:json_annotation/json_annotation.dart';

part 'CodeType.g.dart';

@JsonSerializable()
class CodeType {
	//类型
	String type;
	//code
	String code;

	CodeType({
		this.type,
		this.code
	});

	factory CodeType.fromJson(Map<String, dynamic> json) => _$CodeTypeFromJson(json);

	Map<String, dynamic> toJson() => _$CodeTypeToJson(this);

}