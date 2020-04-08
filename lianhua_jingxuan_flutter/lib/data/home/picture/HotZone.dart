import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/StrandComponent.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'HotZone.g.dart';

@JsonSerializable()
class HotZone extends StrandComponent{
	//图片组url
	List<BannerImage> images;

	HotZone({
		this.images
	});

	factory HotZone.fromJson(Map<String, dynamic> json) => _$HotZoneFromJson(json);

	Map<String, dynamic> toJson() => _$HotZoneToJson(this);

}