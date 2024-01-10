import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'misc.dart';
import 'paginate.dart';

part 'gallery.g.dart';

@JsonSerializable()
class Gallery {
	int? status;
	int? count;
	String? message;
	List<Datum>? data;
	Misc? misc;
	Paginate? paginate;

	Gallery({
		this.status, 
		this.count, 
		this.message, 
		this.data, 
		this.misc, 
		this.paginate, 
	});

	factory Gallery.fromJson(Map<String, dynamic> json) {
		return _$GalleryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$GalleryToJson(this);
}
