import 'package:json_annotation/json_annotation.dart';

part 'Parameter.g.dart';

@JsonSerializable()
class Parameter {
	//名称
	String name;
	//值
	String value;

	Parameter({
		this.name,
		this.value
	});

	factory Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);

	Map<String, dynamic> toJson() => _$ParameterToJson(this);

}