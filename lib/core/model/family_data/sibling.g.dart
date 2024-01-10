// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sibling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sibling _$SiblingFromJson(Map<String, dynamic> json) => Sibling(
      studentId: json['student_id'] as int?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      highestQualification: json['highest_qualification'] as int?,
      course: json['course'] as int?,
      occupation: json['occupation'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$SiblingToJson(Sibling instance) => <String, dynamic>{
      'student_id': instance.studentId,
      'name': instance.name,
      'gender': instance.gender,
      'highest_qualification': instance.highestQualification,
      'course': instance.course,
      'occupation': instance.occupation,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
