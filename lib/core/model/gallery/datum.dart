import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	int? id;
	@JsonKey(name: 'meeting_id') 
	int? meetingId;
	String? name;
	int? year;
	String? description;
	dynamic title;
	dynamic cover;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	dynamic updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;
	String? images;

	Datum({
		this.id, 
		this.meetingId, 
		this.name, 
		this.year, 
		this.description, 
		this.title, 
		this.cover, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
		this.images, 
	});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
