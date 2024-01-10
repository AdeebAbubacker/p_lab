// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guardian _$GuardianFromJson(Map<String, dynamic> json) => Guardian(
      id: json['id'] as int?,
      studentId: json['student_id'] as int?,
      name: json['name'] as String?,
      relation: json['relation'] as String?,
      phone: json['phone'],
      email: json['email'],
      dob: json['dob'],
      highestQualification: json['highest_qualification'],
      occupation: json['occupation'],
      income: json['income'] as int?,
      alive: json['alive'] as int?,
      disabled: json['disabled'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$GuardianToJson(Guardian instance) => <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'name': instance.name,
      'relation': instance.relation,
      'phone': instance.phone,
      'email': instance.email,
      'dob': instance.dob,
      'highest_qualification': instance.highestQualification,
      'occupation': instance.occupation,
      'income': instance.income,
      'alive': instance.alive,
      'disabled': instance.disabled,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };
