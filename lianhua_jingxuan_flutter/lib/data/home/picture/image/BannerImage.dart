import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/Component.dart';

part 'BannerImage.g.dart';

@JsonSerializable()
class BannerImage extends Component{
	//图片链接
	String imageUrl;
	//重定向链接
	String redirectUrl;
	String redirectType;

	BannerImage({
		this.imageUrl,
		this.redirectUrl,
		this.redirectType
	});

	factory BannerImage.fromJson(Map<String, dynamic> json) => _$BannerImageFromJson(json);

	Map<String, dynamic> toJson() => _$BannerImageToJson(this);

}