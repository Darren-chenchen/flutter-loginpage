import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/JXComponents.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/Component.dart';
import 'package:lianhua_jingxuan_flutter/data/home/picture/image/BannerImage.dart';

part 'StrandComponent.g.dart';

@JsonSerializable()
class StrandComponent extends Component{
	//组件名称
	String name;
	//投放门店id
	String storeIds;
	//起始时间
	String begin;
	//结束时间
	String end;
	//组件下方留白px
	int marginBottom;

	StrandComponent({
		this.name,
		this.storeIds,
		this.begin,
		this.end,
		this.marginBottom,
	});

	factory StrandComponent.fromJson(Map<String, dynamic> json) => _$StrandComponentFromJson(json);

	Map<String, dynamic> toJson() => _$StrandComponentToJson(this);

}