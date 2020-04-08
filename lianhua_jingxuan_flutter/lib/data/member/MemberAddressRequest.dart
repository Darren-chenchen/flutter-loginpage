import 'package:json_annotation/json_annotation.dart';

part 'MemberAddressRequest.g.dart';

@JsonSerializable()
class MemberAddressRequest {
	//识别类型，0-卡号;2-会员号
	String accountType;
	//识别码
	String accountCode;

	MemberAddressRequest({
		this.accountType,
		this.accountCode
	});

	factory MemberAddressRequest.fromJson(Map<String, dynamic> json) => _$MemberAddressRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberAddressRequestToJson(this);

}