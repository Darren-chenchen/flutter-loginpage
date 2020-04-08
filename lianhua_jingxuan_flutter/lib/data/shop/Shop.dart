import 'package:json_annotation/json_annotation.dart';
import './Contact.dart';
import '../address/Address.dart';
import './Description.dart';
import './Tag.dart';
import './Reference.dart';

part 'Shop.g.dart';

@JsonSerializable()
class Shop {
	String id;
	//代码
	String code;
	//名称
	String name;
	//门店类型
	String type;
	//联系信息
	Contact contact;
	//地址信息
	Address address;
	//标签
	List<Tag> tags;
	//主图
	String image;
	//店头照
	String facadeImage;
	//副图
	List<String> images;
	//详情信息
	List<Description> descriptions;
	//商圈
	List<String> businessCircles;
	//等级
	String level;
	//营业时间
	List<String> businessHour;
	//服务电话
	String servicePhoneNumber;
	//催单电话
	String remaindPhoneNumber;
	//客诉电话
	String complainPhoneNumber;
	//客诉服务时间
	String complainPhoneHour;
	//支持的配送方式
	List<String> deliveries;
	//距离
	Reference reference;
	/// 门店休息可预约
	bool supportReservation;

	Shop();

	factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);

	Map<String, dynamic> toJson() => _$ShopToJson(this);

}