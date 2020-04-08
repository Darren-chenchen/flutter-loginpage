import 'package:json_annotation/json_annotation.dart';

part 'AddressFilter.g.dart';

@JsonSerializable()
class AddressFilter {
	//关键字
	String keyword;
	//规则： 经度和纬度用","分割，经度在前，纬度在后，经纬度小数点后不得超过6位
	String location;
	//取值范围:0-50000。规则：大于50000按默认值，单位：米
	int radius;
	//当前页
	int page;
	//页大小, 强烈建议不超过25，若超过25可能造成访问报错
	int pageSize;

	AddressFilter();

	factory AddressFilter.fromJson(Map<String, dynamic> json) => _$AddressFilterFromJson(json);

	Map<String, dynamic> toJson() => _$AddressFilterToJson(this);

}