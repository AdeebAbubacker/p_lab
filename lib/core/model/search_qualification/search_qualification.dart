import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'search_qualification.g.dart';

@JsonSerializable()
class SearchQualification {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	SearchQualification({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory SearchQualification.fromJson(Map<String, dynamic> json) {
		return _$SearchQualificationFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchQualificationToJson(this);
}
