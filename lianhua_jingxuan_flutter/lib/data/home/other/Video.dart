import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';

part 'Video.g.dart';

@JsonSerializable()
class Video extends StrandComponent{
	//标题
	String title;
	//标题
	String titleColor;
	//视频url
	String videoUrls;
	//视频封面url
	String coverUrls;

	Video({
		this.title,
		this.titleColor,
		this.videoUrls,
		this.coverUrls
	});

	factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

	Map<String, dynamic> toJson() => _$VideoToJson(this);

}