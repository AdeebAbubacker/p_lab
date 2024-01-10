import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'drop_down_values.g.dart';

@JsonSerializable()
class DropDownValues {
	int? status;
	int? count;
	String? message;
	Data? data;
	List<dynamic>? misc;

	DropDownValues({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
	});

	factory DropDownValues.fromJson(Map<String, dynamic> json) {
		return _$DropDownValuesFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DropDownValuesToJson(this);
}
