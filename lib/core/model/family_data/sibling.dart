import 'package:json_annotation/json_annotation.dart';

part 'sibling.g.dart';

@JsonSerializable()
class Sibling {
	@JsonKey(name: 'student_id') 
	int? studentId;
	String? name;
	String? gender;
	@JsonKey(name: 'highest_qualification') 
	int? highestQualification;
	int? course;
	int? occupation;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	int? id;

	Sibling({
		this.studentId, 
		this.name, 
		this.gender, 
		this.highestQualification, 
		this.course, 
		this.occupation, 
		this.updatedAt, 
		this.createdAt, 
		this.id, 
	});

	factory Sibling.fromJson(Map<String, dynamic> json) {
		return _$SiblingFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SiblingToJson(this);
}
