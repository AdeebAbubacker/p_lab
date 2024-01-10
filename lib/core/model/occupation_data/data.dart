import 'package:json_annotation/json_annotation.dart';

import 'bank.dart';
import 'college.dart';
import 'course.dart';
import 'occupation.dart';
import 'qualification.dart';
import 'school.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	List<Bank>? banks;
	List<Occupation>? occupations;
	List<Qualification>? qualifications;
	List<Course>? courses;
	List<School>? schools;
	List<College>? colleges;
	@JsonKey(name: 'event_year') 
	List<String>? eventYear;

	Data({
		this.banks, 
		this.occupations, 
		this.qualifications, 
		this.courses, 
		this.schools, 
		this.colleges, 
		this.eventYear, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
