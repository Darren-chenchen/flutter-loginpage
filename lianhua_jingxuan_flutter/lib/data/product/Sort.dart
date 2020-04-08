import 'package:json_annotation/json_annotation.dart';

part 'Sort.g.dart';

@JsonSerializable()
class Sort {
	bool desc;
	String sortKey;


	Sort({
		this.desc,
		this.sortKey
	});

	factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

	Map<String, dynamic> toJson() => _$SortToJson(this);

}