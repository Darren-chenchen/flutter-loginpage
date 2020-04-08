import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/Component.dart';

part 'BottomFloat.g.dart';

@JsonSerializable()
class BottomFloat extends Component{
	//
	String imageUrl;

	BottomFloat({
		this.imageUrl
	});

	factory BottomFloat.fromJson(Map<String, dynamic> json) => _$BottomFloatFromJson(json);

	Map<String, dynamic> toJson() => _$BottomFloatToJson(this);

}