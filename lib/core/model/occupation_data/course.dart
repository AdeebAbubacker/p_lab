import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
	int? id;
	String? name;
	@JsonKey(name: 'short_name') 
	dynamic shortName;
	double? duration;
	dynamic comments;
	bool? active;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	dynamic updatedAt;

	Course({
		this.id, 
		this.name, 
		this.shortName, 
		this.duration, 
		this.comments, 
		this.active, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Course.fromJson(Map<String, dynamic> json) {
		return _$CourseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CourseToJson(this);
}
