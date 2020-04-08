import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartAddCardRequest.g.dart';

@JsonSerializable()
class JxCartAddCardRequest extends JxCartBaseRequest{
	//卡号,当卡号是null或空串时则表示无卡充值
	String cardNum;

	JxCartAddCardRequest({
		this.cardNum
	});

	factory JxCartAddCardRequest.fromJson(Map<String, dynamic> json) => _$JxCartAddCardRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartAddCardRequestToJson(this);

}