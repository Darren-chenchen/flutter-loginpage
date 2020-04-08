import 'package:json_annotation/json_annotation.dart';

part 'ProductProperties.g.dart';

@JsonSerializable()
class ProductProperties {
	//名称
	String name;
	//值
	String value;

	ProductProperties({
		this.name,
		this.value
	});

	factory ProductProperties.fromJson(Map<String, dynamic> json) => _$ProductPropertiesFromJson(json);

	Map<String, dynamic> toJson() => _$ProductPropertiesToJson(this);

}