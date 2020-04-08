import 'package:json_annotation/json_annotation.dart';

part 'BOrderScoreLine.g.dart';

@JsonSerializable()
class BOrderScoreLine {
	//交易号
	String tranId;
	//积分科目
	String scoreSubject;
	//积分类别代码
	String scoreType;
	//积分数
	double score;
	//是否已核销
	bool used;

	BOrderScoreLine({
		this.tranId,
		this.scoreSubject,
		this.scoreType,
		this.score,
		this.used
	});

	factory BOrderScoreLine.fromJson(Map<String, dynamic> json) => _$BOrderScoreLineFromJson(json);

	Map<String, dynamic> toJson() => _$BOrderScoreLineToJson(this);

}