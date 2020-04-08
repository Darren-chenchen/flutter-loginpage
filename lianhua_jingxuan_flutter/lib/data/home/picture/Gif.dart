import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'Gif.g.dart';

@JsonSerializable()
class Gif extends StrandComponent{
	//图片组url
	List<BannerImage> images;

	Gif({
		this.images
	});

	factory Gif.fromJson(Map<String, dynamic> json) => _$GifFromJson(json);

	Map<String, dynamic> toJson() => _$GifToJson(this);

}