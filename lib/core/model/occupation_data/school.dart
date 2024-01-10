import 'package:json_annotation/json_annotation.dart';

part 'school.g.dart';

@JsonSerializable()
class School {
	int? id;
	String? name;
	@JsonKey(name: 'short_name') 
	dynamic shortName;
	@JsonKey(name: 'is_private') 
	bool? isPrivate;
	@JsonKey(name: 'area_id') 
	dynamic areaId;
	dynamic landmark;
	dynamic coordinates;
	dynamic comments;
	bool? active;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	dynamic updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	School({
		this.id, 
		this.name, 
		this.shortName, 
		this.isPrivate, 
		this.areaId, 
		this.landmark, 
		this.coordinates, 
		this.comments, 
		this.active, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
	});

	factory School.fromJson(Map<String, dynamic> json) {
		return _$SchoolFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SchoolToJson(this);
}
