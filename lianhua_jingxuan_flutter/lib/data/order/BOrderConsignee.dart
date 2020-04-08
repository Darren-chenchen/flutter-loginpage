import 'package:json_annotation/json_annotation.dart';

part 'BOrderConsignee.g.dart';

@JsonSerializable()
class BOrderConsignee {
	//姓名
	String name;
	//手机号
	String mobile;
	//省份
	String province;
	//市
	String city;
	//区县
	String district;
	//街道
	String street;

	BOrderConsignee({
		this.name,
		this.mobile,
		this.province,
		this.city,
		this.district,
		this.street
	});

	factory BOrderConsignee.fromJson(Map<String, dynamic> json) => _$BOrderConsigneeFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderConsigneeToJson(this);

}