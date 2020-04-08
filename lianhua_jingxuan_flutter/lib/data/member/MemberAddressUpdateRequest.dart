import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/MemberAddress.dart';
import 'package:lianhua_jingxuan_flutter/data/member/MemberAddressRequest.dart';

part 'MemberAddressUpdateRequest.g.dart';

@JsonSerializable()
class MemberAddressUpdateRequest extends MemberAddressRequest{
	MemberAddress address;

	MemberAddressUpdateRequest({
		this.address
	});

	factory MemberAddressUpdateRequest.fromJson(Map<String, dynamic> json) => _$MemberAddressUpdateRequestFromJson(json);

	Map<String, dynamic> toJson() => _$MemberAddressUpdateRequestToJson(this);

}