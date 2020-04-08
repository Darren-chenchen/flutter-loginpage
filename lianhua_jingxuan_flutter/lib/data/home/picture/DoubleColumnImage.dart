import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'DoubleColumnImage.g.dart';

@JsonSerializable()
class DoubleColumnImage extends StrandComponent{
	//图片组url
	List<BannerImage> images;

	DoubleColumnImage({
		this.images
	});

	factory DoubleColumnImage.fromJson(Map<String, dynamic> json) => _$DoubleColumnImageFromJson(json);

	Map<String, dynamic> toJson() => _$DoubleColumnImageToJson(this);

}