// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Qualification _$QualificationFromJson(Map<String, dynamic> json) =>
    Qualification(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as bool?,
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$QualificationToJson(Qualification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'deleted_at': instance.deletedAt,
    };
