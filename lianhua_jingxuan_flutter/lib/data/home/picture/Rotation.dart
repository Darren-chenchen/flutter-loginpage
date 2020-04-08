import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'Rotation.g.dart';

@JsonSerializable()
class Rotation extends StrandComponent{
	//图片组url
	List<BannerImage> images;

	Rotation({
		this.images
	});

	factory Rotation.fromJson(Map<String, dynamic> json) => _$RotationFromJson(json);

	Map<String, dynamic> toJson() => _$RotationToJson(this);

}