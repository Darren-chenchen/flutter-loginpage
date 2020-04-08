import 'package:json_annotation/json_annotation.dart';

part 'Score.g.dart';

@JsonSerializable()
class Score {
	//卡类型
	String cardType;
	//卡号
	String cardNo;
	//卡名称
	String cardName;
	//积分
	String score;
	//实体卡号
	String physicalCardNum;
	//虚拟卡号
	String virtualCardNum;
	//会员卡等级
	String cardLevel;
	//会员卡等级名称
	String cardLevelName;
	//到期时间 yyyy-MM-dd HH:mm:ss 注：只有有值会员等级才有到期时间
	String endDate;

	Score({
		this.cardType,
		this.cardNo,
		this.cardName,
		this.score,
		this.physicalCardNum,
		this.virtualCardNum,
		this.cardLevel,
		this.cardLevelName,
		this.endDate
	});

	factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);

	Map<String, dynamic> toJson() => _$ScoreToJson(this);

}