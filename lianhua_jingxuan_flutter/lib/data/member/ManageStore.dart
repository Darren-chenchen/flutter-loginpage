import 'package:json_annotation/json_annotation.dart';

part 'ManageStore.g.dart';

@JsonSerializable()
class ManageStore {
	//门店编码
	String manageStoreCode;
	//门店名称
	String manageStoreName;

	ManageStore({
		this.manageStoreCode,
		this.manageStoreName
	});

	factory ManageStore.fromJson(Map<String, dynamic> json) => _$ManageStoreFromJson(json);

	Map<String, dynamic> toJson() => _$ManageStoreToJson(this);

}