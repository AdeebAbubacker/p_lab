import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'search_college.g.dart';

@JsonSerializable()
class SearchCollege {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	SearchCollege({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory SearchCollege.fromJson(Map<String, dynamic> json) {
		return _$SearchCollegeFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchCollegeToJson(this);
}
