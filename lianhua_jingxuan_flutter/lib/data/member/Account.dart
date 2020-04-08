import 'package:json_annotation/json_annotation.dart';

part 'Account.g.dart';

@JsonSerializable()
class Account {
	//识别类型，0-实体卡号，4-虚拟卡号
	int accountType;
	//识别码，根据识别类型确定值
	String accountCode;

	Account({
		this.accountType,
		this.accountCode
	});

	factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

	Map<String, dynamic> toJson() => _$AccountToJson(this);

}