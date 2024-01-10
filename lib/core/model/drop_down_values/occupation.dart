import 'package:json_annotation/json_annotation.dart';

part 'occupation.g.dart';

@JsonSerializable()
class Occupation {
	int? id;
	String? name;
	int? active;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Occupation({this.id, this.name, this.active, this.deletedAt});

	factory Occupation.fromJson(Map<String, dynamic> json) {
		return _$OccupationFromJson(json);
	}

	Map<String, dynamic> toJson() => _$OccupationToJson(this);
}
