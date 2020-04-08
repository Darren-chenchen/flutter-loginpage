import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'SeckKill.g.dart';

@JsonSerializable()
class SeckKill extends StrandComponent{
	//标题背景色
	String titleBackgroundColor;
	//标题字体色
	String titleFontColor;
	//时间背景色
	String timeBackgroundColor;
	//时间字体色
	String timeFontColor;
	//未开始背景色
	String createdBackgroundColor;
	//未开始字体色
	String createdFontColor;
	//进行中背景色
	String inProgressBackgroundColor;
	//进行中字体色
	String inProgressFontColor;
	//还未确定
	List<String> showMessage;
	String skuIds;

	SeckKill({
		this.titleBackgroundColor,
		this.titleFontColor,
		this.timeBackgroundColor,
		this.timeFontColor,
		this.createdBackgroundColor,
		this.createdFontColor,
		this.inProgressBackgroundColor,
		this.inProgressFontColor,
		this.showMessage,
		this.skuIds
	});

	factory SeckKill.fromJson(Map<String, dynamic> json) => _$SeckKillFromJson(json);

	Map<String, dynamic> toJson() => _$SeckKillToJson(this);

}