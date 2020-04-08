import 'package:json_annotation/json_annotation.dart';

part 'JxCartBaseRequest.g.dart';

@JsonSerializable()
class JxCartBaseRequest {
	//会员ID
	String memberId;
	//是否临时购物车
	bool isTemp;

	JxCartBaseRequest({
		this.memberId,
		this.isTemp
	});

	factory JxCartBaseRequest.fromJson(Map<String, dynamic> json) => _$JxCartBaseRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartBaseRequestToJson(this);

}