import 'package:json_annotation/json_annotation.dart';

part 'RegisterBrand.g.dart';

@JsonSerializable()
class RegisterBrand {
	//编码
	String registerBrandCode;
	//名称
	String registerBrandName;

	RegisterBrand({
		this.registerBrandCode,
		this.registerBrandName
	});

	factory RegisterBrand.fromJson(Map<String, dynamic> json) => _$RegisterBrandFromJson(json);

	Map<String, dynamic> toJson() => _$RegisterBrandToJson(this);

}