import 'package:json_annotation/json_annotation.dart';

part 'bank.g.dart';

@JsonSerializable()
class Bank {
	int? id;
	String? name;
	@JsonKey(name: 'deleted_at') 
	dynamic deletedAt;

	Bank({this.id, this.name, this.deletedAt});

	factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);

	Map<String, dynamic> toJson() => _$BankToJson(this);
}
