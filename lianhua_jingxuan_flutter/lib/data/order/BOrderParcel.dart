import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/order/BEntity.dart';

part 'BOrderParcel.g.dart';

@JsonSerializable()
class BOrderParcel extends BEntity{
	//订单号
	String owner;
	//快递公司编号
	String company;
	//快递公司名称
	String companyName;
	//快递单号
	String number;

	BOrderParcel({
		this.owner,
		this.company,
		this.companyName,
		this.number
	});

	factory BOrderParcel.fromJson(Map<String, dynamic> json) => _$BOrderParcelFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderParcelToJson(this);

}