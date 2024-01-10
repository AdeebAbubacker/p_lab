// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      banks: (json['banks'] as List<dynamic>?)
          ?.map((e) => Bank.fromJson(e as Map<String, dynamic>))
          .toList(),
      occupations: (json['occupations'] as List<dynamic>?)
          ?.map((e) => Occupation.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualifications: (json['qualifications'] as List<dynamic>?)
          ?.map((e) => Qualification.fromJson(e as Map<String, dynamic>))
          .toList(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      schools: (json['schools'] as List<dynamic>?)
          ?.map((e) => School.fromJson(e as Map<String, dynamic>))
          .toList(),
      colleges: (json['colleges'] as List<dynamic>?)
          ?.map((e) => College.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventYear: (json['event_year'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'banks': instance.banks,
      'occupations': instance.occupations,
      'qualifications': instance.qualifications,
      'courses': instance.courses,
      'schools': instance.schools,
      'colleges': instance.colleges,
      'event_year': instance.eventYear,
    };
