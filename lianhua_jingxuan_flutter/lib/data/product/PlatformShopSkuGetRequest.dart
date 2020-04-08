import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/product/MemberInfo.dart';

part 'PlatformShopSkuGetRequest.g.dart';

@JsonSerializable()
class PlatformShopSkuGetRequest {
	MemberInfo memberInfo;

	PlatformShopSkuGetRequest({
		this.memberInfo
	});

	factory PlatformShopSkuGetRequest.fromJson(Map<String, dynamic> json) => _$PlatformShopSkuGetRequestFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformShopSkuGetRequestToJson(this);

}