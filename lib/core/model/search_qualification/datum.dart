import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
	int? id;
	String? name;
	bool? status;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Datum({this.id, this.name, this.status, this.deletedAt});

	factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

	Map<String, dynamic> toJson() => _$DatumToJson(this);
}
