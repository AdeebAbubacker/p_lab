import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'misc.dart';

part 'personal_info.g.dart';

@JsonSerializable()
class PersonalInfo {
	int? status;
	int? count;
	String? message;
	Data? data;
	Misc? misc;

	PersonalInfo({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
	});

	factory PersonalInfo.fromJson(Map<String, dynamic> json) {
		return _$PersonalInfoFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PersonalInfoToJson(this);
}
