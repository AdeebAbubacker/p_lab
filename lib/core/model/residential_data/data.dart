import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	String? ownership;
	String? roof;
	@JsonKey(name: 'drinking_water') 
	String? drinkingWater;
	@JsonKey(name: 'land_size') 
	String? landSize;

	Data({this.ownership, this.roof, this.drinkingWater, this.landSize});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
