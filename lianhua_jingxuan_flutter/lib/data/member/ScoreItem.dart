import 'package:json_annotation/json_annotation.dart';

part 'ScoreItem.g.dart';

@JsonSerializable()
class ScoreItem {
	//积分
	String points;
	//积分类型
	String pointsType;
	//积分描述
	String pointsComment;
	//创建时间
	String creationDate;

	ScoreItem({
		this.points,
		this.pointsType,
		this.pointsComment,
		this.creationDate
	});

	factory ScoreItem.fromJson(Map<String, dynamic> json) => _$ScoreItemFromJson(json);

	Map<String, dynamic> toJson() => _$ScoreItemToJson(this);

}