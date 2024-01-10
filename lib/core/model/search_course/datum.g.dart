// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      shortName: json['short_name'],
      duration: (json['duration'] as num?)?.toDouble(),
      comments: json['comments'],
      active: json['active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_name': instance.shortName,
      'duration': instance.duration,
      'comments': instance.comments,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
    };
