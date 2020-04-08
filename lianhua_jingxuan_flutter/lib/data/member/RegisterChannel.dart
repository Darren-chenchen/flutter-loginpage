import 'package:json_annotation/json_annotation.dart';

part 'RegisterChannel.g.dart';

@JsonSerializable()
class RegisterChannel {
	//渠道编码
	String registerChannelCode;
	//渠道名称
	String registerChannelName;

	RegisterChannel({
		this.registerChannelCode,
		this.registerChannelName
	});

	factory RegisterChannel.fromJson(Map<String, dynamic> json) => _$RegisterChannelFromJson(json);

	Map<String, dynamic> toJson() => _$RegisterChannelToJson(this);

}