import 'package:json_annotation/json_annotation.dart';

part 'RegisterStore.g.dart';

@JsonSerializable()
class RegisterStore {
	//门店编码
	String registerStoreCode;
	//门店名称
	String registerStoreName;

	RegisterStore({
		this.registerStoreCode,
		this.registerStoreName
	});

	factory RegisterStore.fromJson(Map<String, dynamic> json) => _$RegisterStoreFromJson(json);

	Map<String, dynamic> toJson() => _$RegisterStoreToJson(this);

}