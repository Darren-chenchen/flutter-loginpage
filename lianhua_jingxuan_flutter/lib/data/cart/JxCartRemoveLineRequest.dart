import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartRemoveLineRequest.g.dart';

@JsonSerializable()
class JxCartRemoveLineRequest extends JxCartBaseRequest{
	//商品行uuid集合
	List<String> uuids;

	JxCartRemoveLineRequest({
		this.uuids
	});

	factory JxCartRemoveLineRequest.fromJson(Map<String, dynamic> json) => _$JxCartRemoveLineRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartRemoveLineRequestToJson(this);

}