import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	int? id;
	String? news;
	String? date;
	String? page;
	dynamic active;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	@JsonKey(name: 'updated_at') 
	dynamic updatedAt;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Datum({
		this.id, 
		this.news, 
		this.date, 
		this.page, 
		this.active, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
	});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
