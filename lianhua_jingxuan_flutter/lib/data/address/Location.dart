import 'package:json_annotation/json_annotation.dart';

part 'Location.g.dart';

@JsonSerializable()
class Location {
	//经度
	String longitude;
	//维度
	String latitude;
	//离中心点距离, 仅在周边搜索的时候有值返回
	double distance;

	Location();

	factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

	Map<String, dynamic> toJson() => _$LocationToJson(this);

}