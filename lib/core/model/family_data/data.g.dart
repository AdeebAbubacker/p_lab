// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      guardians: (json['guardians'] as List<dynamic>?)
          ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
          .toList(),
      siblings: (json['siblings'] as List<dynamic>?)
          ?.map((e) => Sibling.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'guardians': instance.guardians,
      'siblings': instance.siblings,
    };
