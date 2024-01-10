import 'package:json_annotation/json_annotation.dart';

part 'misc.g.dart';

@JsonSerializable()
class Misc {
	@JsonKey(name: 'selected_year') 
	String? selectedYear;
	@JsonKey(name: 'latest_year') 
	String? latestYear;
	@JsonKey(name: 'available_years') 
	List<String>? availableYears;

	Misc({this.selectedYear, this.latestYear, this.availableYears});

	factory Misc.fromJson(Map<String, dynamic> json) => _$MiscFromJson(json);

	Map<String, dynamic> toJson() => _$MiscToJson(this);
}
