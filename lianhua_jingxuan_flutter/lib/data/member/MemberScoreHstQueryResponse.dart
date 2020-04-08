import 'package:json_annotation/json_annotation.dart';
import 'package:lianhua_jingxuan_flutter/data/member/ScoreItem.dart';

part 'MemberScoreHstQueryResponse.g.dart';

@JsonSerializable()
class MemberScoreHstQueryResponse {
	//会员UUID, 会员唯一标识
	String memberUuid;
	//会员号
	String memberNum;
	//会员姓名
	String name;
	//卡类型
	String cardType;
	//虚拟卡号
	String cardNo;
	//实体卡号
	String physicalCardNum;
	//总条数
	int total;
	//积分
	List<ScoreItem> scores;

	MemberScoreHstQueryResponse({
		this.memberUuid,
		this.memberNum,
		this.name,
		this.cardType,
		this.cardNo,
		this.physicalCardNum,
		this.total,
		this.scores
	});

	factory MemberScoreHstQueryResponse.fromJson(Map<String, dynamic> json) => _$MemberScoreHstQueryResponseFromJson(json);

	Map<String, dynamic> toJson() => _$MemberScoreHstQueryResponseToJson(this);

}