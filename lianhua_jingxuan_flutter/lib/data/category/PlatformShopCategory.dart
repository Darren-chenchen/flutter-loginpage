import 'package:json_annotation/json_annotation.dart';

part 'PlatformShopCategory.g.dart';

@JsonSerializable()
class PlatformShopCategory {
	//平台id
	String platformId;
	//组织id
	String shopId;
	//分类id
	String id;
	//代码
	String code;
	//名称
	String name;
	//上级
	String upperId;
	//路径
	String path;
	//排序值
	int sort;
	//子类目
	List<PlatformShopCategory> children;
	String upperEq;

	PlatformShopCategory({
		this.platformId,
		this.shopId,
		this.id,
		this.code,
		this.name,
		this.upperId,
		this.path,
		this.sort,
		this.children,
		this.upperEq
	});

	factory PlatformShopCategory.fromJson(Map<String, dynamic> json) => _$PlatformShopCategoryFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformShopCategoryToJson(this);

}