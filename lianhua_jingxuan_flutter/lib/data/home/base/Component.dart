import 'package:json_annotation/json_annotation.dart';

part 'Component.g.dart';

@JsonSerializable()
class Component {
	//组件id
	String id;
	//组件id
	String type;

	Component({
		this.id,
		this.type
	});

	factory Component.fromJson(Map<String, dynamic> json) => _$ComponentFromJson(json);

	Map<String, dynamic> toJson() => _$ComponentToJson(this);

}