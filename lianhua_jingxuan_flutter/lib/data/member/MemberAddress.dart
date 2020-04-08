import 'package:json_annotation/json_annotation.dart';

part 'MemberAddress.g.dart';

@JsonSerializable()
class MemberAddress {
	//地址id
	String id;
	//姓名
	String name;
	//手机
	String mobile;
	//是否默认地址
	bool isDefault;
	//区域id
	String areId;
	//区域名称
	String areaName;
	//详细地址
	String address;
	//邮政编码
	String zipCode;
	//经度
	String longitude;
	//维度
	String latitude;
	//说明
	String remark;
	//地址标签
	String addressLabel;
	//地图地址
	String mapAddress;

	MemberAddress({
		this.id,
		this.name,
		this.mobile,
		this.isDefault,
		this.areId,
		this.areaName,
		this.address,
		this.zipCode,
		this.longitude,
		this.latitude,
		this.remark,
		this.addressLabel,
		this.mapAddress
	});

	factory MemberAddress.fromJson(Map<String, dynamic> json) => _$MemberAddressFromJson(json);

	Map<String, dynamic> toJson() => _$MemberAddressToJson(this);

}