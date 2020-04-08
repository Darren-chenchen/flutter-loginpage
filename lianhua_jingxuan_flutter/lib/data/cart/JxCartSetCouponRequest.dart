import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartSetCouponRequest.g.dart';

@JsonSerializable()
class JxCartSetCouponRequest extends JxCartBaseRequest{
	//券码集合
	List<String> codes;

	JxCartSetCouponRequest({
		this.codes
	});

	factory JxCartSetCouponRequest.fromJson(Map<String, dynamic> json) => _$JxCartSetCouponRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartSetCouponRequestToJson(this);

}