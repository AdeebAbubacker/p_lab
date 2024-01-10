// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bank _$BankFromJson(Map<String, dynamic> json) => Bank(
      id: json['id'] as int?,
      name: json['name'] as String?,
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'deleted_at': instance.deletedAt,
    };
