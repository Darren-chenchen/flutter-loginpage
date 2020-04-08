import 'package:json_annotation/json_annotation.dart';

part 'OrderCancelRequest.g.dart';

@JsonSerializable()
class OrderCancelRequest {
	//取消原因
	String reason;

	OrderCancelRequest({
		this.reason
	});

	factory OrderCancelRequest.fromJson(Map<String, dynamic> json) => _$OrderCancelRequestFromJson(json);

	Map<String, dynamic> toJson() => _$OrderCancelRequestToJson(this);

}