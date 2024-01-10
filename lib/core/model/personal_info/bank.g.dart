// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bank _$BankFromJson(Map<String, dynamic> json) => Bank(
      bankAccName: json['bank_acc_name'] as String?,
      bankAccNo: json['bank_acc_no'] as String?,
      bankId: json['bank_id'] as int?,
      bankIfsc: json['bank_ifsc'] as String?,
    );

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'bank_acc_name': instance.bankAccName,
      'bank_acc_no': instance.bankAccNo,
      'bank_id': instance.bankId,
      'bank_ifsc': instance.bankIfsc,
    };
