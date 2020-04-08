import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/UuidProm.dart';

part 'JxCartChangePromRequest.g.dart';

@JsonSerializable()
class JxCartChangePromRequest extends JxCartBaseRequest{
	//明细
	List<UuidProm> items;

	JxCartChangePromRequest({
		this.items
	});

	factory JxCartChangePromRequest.fromJson(Map<String, dynamic> json) => _$JxCartChangePromRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartChangePromRequestToJson(this);

}