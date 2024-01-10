import 'package:json_annotation/json_annotation.dart';

import 'guardian.dart';
import 'sibling.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	List<Guardian>? guardians;
	List<Sibling>? siblings;

	Data({this.guardians, this.siblings});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
