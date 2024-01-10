// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Occupation _$OccupationFromJson(Map<String, dynamic> json) => Occupation(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as int?,
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$OccupationToJson(Occupation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'deleted_at': instance.deletedAt,
    };
