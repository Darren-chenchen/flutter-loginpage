import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/cart/JxCartBaseRequest.dart';

part 'JxCartListCouponRequest.g.dart';

@JsonSerializable()
class JxCartListCouponRequest extends JxCartBaseRequest{
	//已勾选的券码集合
	List<String> codes;
	//每页最多包含记录数。0表示将返回所有结果集，默认为0。传入负数等价于传入0。
	int pageSize;
	//返回页数
	int page;

	JxCartListCouponRequest({
		this.codes,
		this.pageSize,
		this.page
	});

	factory JxCartListCouponRequest.fromJson(Map<String, dynamic> json) => _$JxCartListCouponRequestFromJson(json);

	Map<String, dynamic> toJson() => _$JxCartListCouponRequestToJson(this);

}