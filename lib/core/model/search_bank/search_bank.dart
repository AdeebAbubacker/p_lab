import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'search_bank.g.dart';

@JsonSerializable()
class SearchBank {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	SearchBank({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory SearchBank.fromJson(Map<String, dynamic> json) {
		return _$SearchBankFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchBankToJson(this);
}
