import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'paginate.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	List<dynamic>? misc;
	Paginate? paginate;

	News({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

	Map<String, dynamic> toJson() => _$NewsToJson(this);
}
