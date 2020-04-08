import 'package:json_annotation/json_annotation.dart';

part 'ManageEmployee.g.dart';

@JsonSerializable()
class ManageEmployee {
	//员工编号
	String manageEmployeeCode;
	//员工姓名
	String manageEmployeeName;

	ManageEmployee({
		this.manageEmployeeCode,
		this.manageEmployeeName
	});

	factory ManageEmployee.fromJson(Map<String, dynamic> json) => _$ManageEmployeeFromJson(json);

	Map<String, dynamic> toJson() => _$ManageEmployeeToJson(this);

}