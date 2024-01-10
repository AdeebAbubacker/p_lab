import 'package:json_annotation/json_annotation.dart';

import 'academics.dart';
import 'achievement.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	Academics? academics;
	List<Achievement>? achievements;

	Data({this.academics, this.achievements});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
