import 'package:json_annotation/json_annotation.dart';

part 'EquityDetail.g.dart';

@JsonSerializable()
class EquityDetail {
	//权益值(equitySource为2时，1-便捷售后、2-有值会员返利)
	String equityType;
	//权益内容
	String equityContent;

	EquityDetail({
		this.equityType,
		this.equityContent
	});

	factory EquityDetail.fromJson(Map<String, dynamic> json) => _$EquityDetailFromJson(json);

	Map<String, dynamic> toJson() => _$EquityDetailToJson(this);

}