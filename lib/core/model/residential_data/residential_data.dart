import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'residential_data.g.dart';

@JsonSerializable()
class ResidentialData {
	int? status;
	int? count;
	String? message;
	Data? data;
	List<dynamic>? misc;

	ResidentialData({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
	});

	factory ResidentialData.fromJson(Map<String, dynamic> json) {
		return _$ResidentialDataFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResidentialDataToJson(this);
}
