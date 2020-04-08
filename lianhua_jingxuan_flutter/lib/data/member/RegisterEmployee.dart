import 'package:json_annotation/json_annotation.dart';

part 'RegisterEmployee.g.dart';

@JsonSerializable()
class RegisterEmployee {
	//员工编号
	String registerEmployeeCode;
	//员工姓名
	String registerEmployeeName;

	RegisterEmployee({
		this.registerEmployeeCode,
		this.registerEmployeeName
	});

	factory RegisterEmployee.fromJson(Map<String, dynamic> json) => _$RegisterEmployeeFromJson(json);

	Map<String, dynamic> toJson() => _$RegisterEmployeeToJson(this);

}