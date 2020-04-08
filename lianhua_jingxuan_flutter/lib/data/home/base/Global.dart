import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/home/base/Component.dart';

part 'Global.g.dart';

@JsonSerializable()
class Global extends Component{
	//全局标题
	String title;
	//背景颜色
	String bgColor;
	//返回顶部
	bool showTop;
	//购物车
	bool showCart;

	Global({
		this.title,
		this.bgColor,
		this.showTop,
		this.showCart
	});

	factory Global.fromJson(Map<String, dynamic> json) => _$GlobalFromJson(json);

	Map<String, dynamic> toJson() => _$GlobalToJson(this);

}