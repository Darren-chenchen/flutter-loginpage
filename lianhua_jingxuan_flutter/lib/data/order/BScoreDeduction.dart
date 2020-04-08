import 'package:json_annotation/json_annotation.dart';

part 'BScoreDeduction.g.dart';

@JsonSerializable()
class BScoreDeduction {
	double score;
	double amount;
	bool used;

	BScoreDeduction({
		this.score,
		this.amount,
		this.used
	});

	factory BScoreDeduction.fromJson(Map<String, dynamic> json) => _$BScoreDeductionFromJson(json);

	Map<String, dynamic> toJson() => _$BScoreDeductionToJson(this);

}