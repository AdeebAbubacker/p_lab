import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'search_course.g.dart';

@JsonSerializable()
class SearchCourse {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	SearchCourse({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory SearchCourse.fromJson(Map<String, dynamic> json) {
		return _$SearchCourseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchCourseToJson(this);
}
