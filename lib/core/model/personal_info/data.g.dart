// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      bank: json['bank'] == null
          ? null
          : Bank.fromJson(json['bank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'bank': instance.bank,
    };
