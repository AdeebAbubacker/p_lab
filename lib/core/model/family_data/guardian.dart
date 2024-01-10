import 'package:json_annotation/json_annotation.dart';

part 'guardian.g.dart';

@JsonSerializable()
class Guardian {
	int? id;
	@JsonKey(name: 'student_id') 
	int? studentId;
	String? name;
	String? relation;
	dynamic phone;
	dynamic email;
	dynamic dob;
	@JsonKey(name: 'highest_qualification') 
	dynamic highestQualification;
	dynamic occupation;
	int? income;
	int? alive;
	int? disabled;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Guardian({
		this.id, 
		this.studentId, 
		this.name, 
		this.relation, 
		this.phone, 
		this.email, 
		this.dob, 
		this.highestQualification, 
		this.occupation, 
		this.income, 
		this.alive, 
		this.disabled, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
	});

	factory Guardian.fromJson(Map<String, dynamic> json) {
		return _$GuardianFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GuardianToJson(this);
}
