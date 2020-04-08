import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'Text.g.dart';

@JsonSerializable()
class Text extends StrandComponent{
	//文本内容
	String text;
	//字体大小
	String fontSize;
	//字体颜色
	String fontColor;
	//字体对齐方式
	String textAlign;

	Text({
		this.text,
		this.fontSize,
		this.fontColor,
		this.textAlign
	});

	factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);

	Map<String, dynamic> toJson() => _$TextToJson(this);

}