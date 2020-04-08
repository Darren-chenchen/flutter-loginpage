import 'package:json_annotation/json_annotation.dart';

part 'IdName.g.dart';

@JsonSerializable()
class IdName {
	String id;
	String name;

	IdName();

	factory IdName.fromJson(Map<String, dynamic> json) => _$IdNameFromJson(json);

	Map<String, dynamic> toJson() => _$IdNameToJson(this);

}