import 'package:json_annotation/json_annotation.dart';

part 'InputCode.g.dart';

@JsonSerializable()
class InputCode {
	//类型
	String type;
	//代码
	String code;
	//规格
	double qpc;
	//规格说明
	String qpcStr;
	//单位
	String unit;
	//重量
	double weight;

	InputCode({
		this.type,
		this.code,
		this.qpc,
		this.qpcStr,
		this.unit,
		this.weight
	});

	factory InputCode.fromJson(Map<String, dynamic> json) => _$InputCodeFromJson(json);

	Map<String, dynamic> toJson() => _$InputCodeToJson(this);

}