import 'package:json_annotation/json_annotation.dart';

part 'misc.g.dart';

@JsonSerializable()
class Misc {
	@JsonKey(name: 'record_id') 
	int? recordId;

	Misc({this.recordId});

	factory Misc.fromJson(Map<String, dynamic> json) => _$MiscFromJson(json);

	Map<String, dynamic> toJson() => _$MiscToJson(this);
}
