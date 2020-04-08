import 'package:json_annotation/json_annotation.dart';

part 'Contact.g.dart';

@JsonSerializable()
class Contact {
	//联系人名称
	String name;
	//联系人电话
	String telephone;
	//联系人手机
	String mobile;
	//联系人邮箱
	String email;
	//联系人传真
	String fax;

	Contact();

	factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

	Map<String, dynamic> toJson() => _$ContactToJson(this);

}