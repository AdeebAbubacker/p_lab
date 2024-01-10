import 'package:json_annotation/json_annotation.dart';

part 'qualification.g.dart';

@JsonSerializable()
class Qualification {
	int? id;
	String? name;
	bool? status;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Qualification({this.id, this.name, this.status, this.deletedAt});

	factory Qualification.fromJson(Map<String, dynamic> json) {
		return _$QualificationFromJson(json);
	}

	Map<String, dynamic> toJson() => _$QualificationToJson(this);
}
