import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'search_school.g.dart';

@JsonSerializable()
class SearchSchool {
	int? status;
	int? count;
	String? message;
	Data? data;
	List<dynamic>? misc;

	SearchSchool({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
	});

	factory SearchSchool.fromJson(Map<String, dynamic> json) {
		return _$SearchSchoolFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchSchoolToJson(this);
}
