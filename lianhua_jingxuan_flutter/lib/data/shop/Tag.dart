import 'package:json_annotation/json_annotation.dart';

part 'Tag.g.dart';

@JsonSerializable()
class Tag {
	String name;
	String color;

	Tag();

	factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

	Map<String, dynamic> toJson() => _$TagToJson(this);

}