import 'package:json_annotation/json_annotation.dart';
import './Location.dart';

part 'Address.g.dart';

@JsonSerializable()
class Address {
	//国家
	String country;
	//省份id
	String provinceId;
	//身份名称
	String provinceName;
	//城市id
	String cityId;
	//城市名称
	String cityName;
	//地区id
	String districtId;
	//地区名称
	String districtName;
	//街道id
	String streetId;
	//街道名称
	String streetName;
	//详细地址
	String detailAddress;
	//邮编
	String postcode;
	//位置信息
	Location location;

	Address();

	factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

	Map<String, dynamic> toJson() => _$AddressToJson(this);

}