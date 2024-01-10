import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'family_data.g.dart';

@JsonSerializable()
class FamilyData {
	int? status;
	int? count;
	String? message;
	Data? data;
	List<dynamic>? misc;

	FamilyData({this.status, this.count, this.message, this.data, this.misc});

	factory FamilyData.fromJson(Map<String, dynamic> json) {
		return _$FamilyDataFromJson(json);
	}

	Map<String, dynamic> toJson() => _$FamilyDataToJson(this);
}
