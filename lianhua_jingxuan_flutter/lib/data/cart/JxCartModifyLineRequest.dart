import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/CodeQty.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartModifyLineRequest.g.dart';

@JsonSerializable()
class JxCartModifyLineRequest extends JxCartBaseRequest{
	//商品行uuid与数量集合
	List<CodeQty> uuidQtyList;

	JxCartModifyLineRequest({
		this.uuidQtyList
	});

	factory JxCartModifyLineRequest.fromJson(Map<String, dynamic> json) => _$JxCartModifyLineRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartModifyLineRequestToJson(this);

}