import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartAddCouponRequest.g.dart';

@JsonSerializable()
class JxCartAddCouponRequest extends JxCartBaseRequest{
	//券码集合
	List<String> codes;

	JxCartAddCouponRequest({
		this.codes
	});

	factory JxCartAddCouponRequest.fromJson(Map<String, dynamic> json) => _$JxCartAddCouponRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartAddCouponRequestToJson(this);

}