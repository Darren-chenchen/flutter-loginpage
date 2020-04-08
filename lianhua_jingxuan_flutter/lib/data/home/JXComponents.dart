import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/ActiviteContent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/Component.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

import 'base/Global.dart';

part 'JXComponents.g.dart';

@JsonSerializable()
class JXComponents {
	Global component;
	List<ActiviteContent> widgets;

	JXComponents({
		this.component,
		this.widgets
	});

	factory JXComponents.fromJson(Map<String, dynamic> json) => _$JXComponentsFromJson(json);

	Map<String, dynamic> toJson() => _$JXComponentsToJson(this);

}