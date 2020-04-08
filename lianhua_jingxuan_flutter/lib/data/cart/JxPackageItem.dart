import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/PackageType.dart';

part 'JxPackageItem.g.dart';

@JsonSerializable()
class JxPackageItem {
	//包装类型，NONE表示不需要包装，NORMAL表示需要
	PackageType packageType = PackageType.NONE;
	//金额
	double amount;

	JxPackageItem({
		this.packageType,
		this.amount
	});

	factory JxPackageItem.fromJson(Map<String, dynamic> json) => _$JxPackageItemFromJson(json);

	Map<String, dynamic> toJson() => _$JxPackageItemToJson(this);

}