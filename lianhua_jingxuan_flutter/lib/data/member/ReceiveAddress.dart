import 'package:json_annotation/json_annotation.dart';

part 'ReceiveAddress.g.dart';

@JsonSerializable()
class ReceiveAddress {
	//地址id 只新增可为空
	int id;
	//姓名
	String name;
	//手机号
	String mobile;
	//默认传2
	int type;
	//是否是常用地址 0 否 1是
	int isDefault;
	//区域id 省市区的区id
	int areaId;
	//省市区名称 如浙江省,杭州市,下城区
	String areaName;
	//详细地址
	String address;
	//邮政编码
	String zipCode;
	//经度
	String longitude;
	//维度
	String latitude;
	//标签
	String addressLabel;
	//地图上的地址
	String mapAddress;
	//备注
	String remark;
	//1 新增  2修改 3删除 
	int operateFlag;

	ReceiveAddress({
		this.id,
		this.name,
		this.mobile,
		this.type,
		this.isDefault,
		this.areaId,
		this.areaName,
		this.address,
		this.zipCode,
		this.longitude,
		this.latitude,
		this.addressLabel,
		this.mapAddress,
		this.remark,
		this.operateFlag
	});

	factory ReceiveAddress.fromJson(Map<String, dynamic> json) => _$ReceiveAddressFromJson(json);

	Map<String, dynamic> toJson() => _$ReceiveAddressToJson(this);

}