import 'package:json_annotation/json_annotation.dart';

part 'achievement.g.dart';

@JsonSerializable()
class Achievement {
	@JsonKey(name: 'student_id') 
	int? studentId;
	String? title;
	String? description;
	String? attachment;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	int? id;

	Achievement({
		this.studentId, 
		this.title, 
		this.description, 
		this.attachment, 
		this.updatedAt, 
		this.createdAt, 
		this.id, 
	});

	factory Achievement.fromJson(Map<String, dynamic> json) {
		return _$AchievementFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AchievementToJson(this);
}
