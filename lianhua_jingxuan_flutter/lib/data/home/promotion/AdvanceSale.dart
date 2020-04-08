import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'AdvanceSale.g.dart';

@JsonSerializable()
class AdvanceSale extends StrandComponent{
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
	//
	List<String> showMessage;
	//预售活动信息
	List<String> activityId;

	AdvanceSale({
		this.titleBackgroundColor,
		this.titleFontColor,
		this.timeBackgroundColor,
		this.timeFontColor,
		this.createdBackgroundColor,
		this.createdFontColor,
		this.inProgressBackgroundColor,
		this.inProgressFontColor,
		this.showMessage,
		this.activityId
	});

	factory AdvanceSale.fromJson(Map<String, dynamic> json) => _$AdvanceSaleFromJson(json);

	Map<String, dynamic> toJson() => _$AdvanceSaleToJson(this);

}