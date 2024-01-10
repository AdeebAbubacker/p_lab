import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'occupation_data.g.dart';

@JsonSerializable()
class OccupationData {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	OccupationData({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory OccupationData.fromJson(Map<String, dynamic> json) {
		return _$OccupationDataFromJson(json);
	}

	Map<String, dynamic> toJson() => _$OccupationDataToJson(this);
}
