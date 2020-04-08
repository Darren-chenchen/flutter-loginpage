import 'package:json_annotation/json_annotation.dart';

part 'MemberInfo.g.dart';

@JsonSerializable()
class MemberInfo {
	String memberId;
	String memberCardType;
	String memberCardNumber;
	String memberGrade;
	String cardFunction;
	int sex;
	String birthday;

	MemberInfo({
		this.memberId,
		this.memberCardType,
		this.memberCardNumber,
		this.memberGrade,
		this.cardFunction,
		this.sex,
		this.birthday
	});

	factory MemberInfo.fromJson(Map<String, dynamic> json) => _$MemberInfoFromJson(json);

	Map<String, dynamic> toJson() => _$MemberInfoToJson(this);

}