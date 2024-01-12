import 'package:json_annotation/json_annotation.dart';

import 'link.dart';

part 'paginate.g.dart';

@JsonSerializable()
class Paginate {
	@JsonKey(name: 'current_page') 
	int? currentPage;
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

	Paginate({
		this.currentPage, 
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

	factory Paginate.fromJson(Map<String, dynamic> json) {
		return _$PaginateFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PaginateToJson(this);
}
