import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
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

	Datum({
		this.id, 
		this.name, 
		this.shortName, 
		this.duration, 
		this.comments, 
		this.active, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
