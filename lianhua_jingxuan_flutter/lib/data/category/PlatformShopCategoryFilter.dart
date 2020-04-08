import 'package:json_annotation/json_annotation.dart';

part 'PlatformShopCategoryFilter.g.dart';

@JsonSerializable()
class PlatformShopCategoryFilter {
	//门店Id等于
	String shopIdEq;
	//上级分类等于
	String upperEq;
	//代码名称类似于
	String keyword;
	//id等于
	String idEq;
	//代码等于
	String codeEq;
	//代码在...范围内
	List<String> codeIn;
	//活动id等于
	String activityIdEq;
	String platformCategoryIdEq;
	String platformIdEq;

	PlatformShopCategoryFilter({
		this.shopIdEq,
		this.upperEq,
		this.keyword,
		this.idEq,
		this.codeEq,
		this.codeIn,
		this.activityIdEq,
		this.platformCategoryIdEq,
		this.platformIdEq
	});

	factory PlatformShopCategoryFilter.fromJson(Map<String, dynamic> json) => _$PlatformShopCategoryFilterFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformShopCategoryFilterToJson(this);

}