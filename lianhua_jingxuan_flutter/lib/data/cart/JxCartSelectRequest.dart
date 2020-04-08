import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartSelectRequest.g.dart';

@JsonSerializable()
class JxCartSelectRequest extends JxCartBaseRequest{
	//商品行uuid集合
	List<String> uuids;

	JxCartSelectRequest({
		this.uuids
	});

	factory JxCartSelectRequest.fromJson(Map<String, dynamic> json) => _$JxCartSelectRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartSelectRequestToJson(this);

}