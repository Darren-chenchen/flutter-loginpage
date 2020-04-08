import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/CodeQty.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartAddSkuRequest.g.dart';

@JsonSerializable()
class JxCartAddSkuRequest extends JxCartBaseRequest{
	//商品识别码与数量集合
	List<CodeQty> codeQtyList;

	JxCartAddSkuRequest({
		this.codeQtyList
	});

	factory JxCartAddSkuRequest.fromJson(Map<String, dynamic> json) => _$JxCartAddSkuRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartAddSkuRequestToJson(this);

}