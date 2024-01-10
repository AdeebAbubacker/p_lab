import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'misc.dart';

part 'academic_data_model.g.dart';

@JsonSerializable()
class AcademicDataModel {
	int? status;
	int? code;
	String? message;
	Data? data;
	@JsonKey(name: 'need_count') 
	bool? needCount;
	int? count;
	Misc? misc;

	AcademicDataModel({
		this.status, 
		this.code, 
		this.message, 
		this.data, 
		this.needCount, 
		this.count, 
		this.misc, 
	});

	factory AcademicDataModel.fromJson(Map<String, dynamic> json) {
		return _$AcademicDataModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$AcademicDataModelToJson(this);
}
