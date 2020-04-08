import 'package:json_annotation/json_annotation.dart';

part 'BEntity.g.dart';

@JsonSerializable()
class BEntity {
	String uuid;

	BEntity({
		this.uuid
	});

	factory BEntity.fromJson(Map<String, dynamic> json) => _$BEntityFromJson(json);

	Map<String, dynamic> toJson() => _$BEntityToJson(this);

}