import 'package:json_annotation/json_annotation.dart';

part 'ContentPlaceFilter.g.dart';

@JsonSerializable()
class ContentPlaceFilter {
	//渠道等于
	String channelEq;

	ContentPlaceFilter({
		this.channelEq
	});

	factory ContentPlaceFilter.fromJson(Map<String, dynamic> json) => _$ContentPlaceFilterFromJson(json);

	Map<String, dynamic> toJson() => _$ContentPlaceFilterToJson(this);

}