import 'package:json_annotation/json_annotation.dart';

import 'bank.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
	String? name;
	String? gender;
	String? dob;
	String? address;
	String? phone;
	String? email;
	Bank? bank;

	Data({
		this.name, 
		this.gender, 
		this.dob, 
		this.address, 
		this.phone, 
		this.email, 
		this.bank, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

	Map<String, dynamic> toJson() => _$DataToJson(this);
}
