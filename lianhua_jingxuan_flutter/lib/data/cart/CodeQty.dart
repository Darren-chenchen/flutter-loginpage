import 'package:json_annotation/json_annotation.dart';

part 'CodeQty.g.dart';

@JsonSerializable()
class CodeQty {
	//code
	String code;
	//数量
	double qty;

	CodeQty({
		this.code,
		this.qty
	});

	factory CodeQty.fromJson(Map<String, dynamic> json) => _$CodeQtyFromJson(json);

	Map<String, dynamic> toJson() => _$CodeQtyToJson(this);

}