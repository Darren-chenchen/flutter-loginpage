import 'package:json_annotation/json_annotation.dart';

part 'ShopFilter.g.dart';

@JsonSerializable()
class ShopFilter {
	//ID等于
	String idEq;
	//ID在...范围内
	List<String> idIn;
	//名称、代码类似于
	String keyword;
	//代码等于
	String codeEq;
	//代码类似于
	String codeLike;
	//代码在...范围内
	List<String> codeIn;
	//名称类似于
	String nameLike;

	// 规则： 经度和纬度用","分割，经度在前，纬度在后，经纬度小数点后不得超过6位
	String location = "";
	// 是否计算距离
	bool calcDistance = false;
	String platformIdEq = 'jingxuan';

	ShopFilter();

	factory ShopFilter.fromJson(Map<String, dynamic> json) => _$ShopFilterFromJson(json);

	Map<String, dynamic> toJson() => _$ShopFilterToJson(this);

}