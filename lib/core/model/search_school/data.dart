import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'link.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	@JsonKey(name: 'current_page') 
	int? currentPage;
	List<Datum>? data;
	@JsonKey(name: 'first_page_url') 
	String? firstPageUrl;
	int? from;
	@JsonKey(name: 'last_page') 
	int? lastPage;
	@JsonKey(name: 'last_page_url') 
	String? lastPageUrl;
	List<Link>? links;
	@JsonKey(name: 'next_page_url') 
	dynamic nextPageUrl;
	String? path;
	@JsonKey(name: 'per_page') 
	int? perPage;
	@JsonKey(name: 'prev_page_url') 
	dynamic prevPageUrl;
	int? to;
	int? total;

	Data({
		this.currentPage, 
		this.data, 
		this.firstPageUrl, 
		this.from, 
		this.lastPage, 
		this.lastPageUrl, 
		this.links, 
		this.nextPageUrl, 
		this.path, 
		this.perPage, 
		this.prevPageUrl, 
		this.to, 
		this.total, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
