import 'package:json_annotation/json_annotation.dart';

part 'BVersionedEntity.g.dart';

@JsonSerializable()
class BVersionedEntity {
	int version;
	String versionTime;

	BVersionedEntity({
		this.version,
		this.versionTime
	});

	factory BVersionedEntity.fromJson(Map<String, dynamic> json) => _$BVersionedEntityFromJson(json);

	Map<String, dynamic> toJson() => _$BVersionedEntityToJson(this);

}