import 'package:json_annotation/json_annotation.dart';

part 'bank.g.dart';

@JsonSerializable()
class Bank {
	@JsonKey(name: 'bank_acc_name') 
	String? bankAccName;
	@JsonKey(name: 'bank_acc_no') 
	String? bankAccNo;
	@JsonKey(name: 'bank_id') 
	int? bankId;
	@JsonKey(name: 'bank_ifsc') 
	String? bankIfsc;

	Bank({this.bankAccName, this.bankAccNo, this.bankId, this.bankIfsc});

	factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);

	Map<String, dynamic> toJson() => _$BankToJson(this);
}
