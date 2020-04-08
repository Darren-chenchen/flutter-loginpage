import 'package:json_annotation/json_annotation.dart';

part 'ProductAttribute.g.dart';

@JsonSerializable()
class ProductAttribute {
	//名称
	String name;
	//可选值
	List<String> options;

	ProductAttribute({
		this.name,
		this.options
	});

	factory ProductAttribute.fromJson(Map<String, dynamic> json) => _$ProductAttributeFromJson(json);

	Map<String, dynamic> toJson() => _$ProductAttributeToJson(this);

}