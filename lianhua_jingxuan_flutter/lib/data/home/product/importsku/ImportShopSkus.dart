import 'package:json_annotation/json_annotation.dart';

part 'ImportShopSkus.g.dart';

@JsonSerializable()
class ImportShopSkus {
	//商品id
	String id;
	//导入顺序
	String sort;

	ImportShopSkus({
		this.id,
		this.sort
	});

	factory ImportShopSkus.fromJson(Map<String, dynamic> json) => _$ImportShopSkusFromJson(json);

	Map<String, dynamic> toJson() => _$ImportShopSkusToJson(this);

}