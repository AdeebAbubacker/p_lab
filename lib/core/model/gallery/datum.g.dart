// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      meetingId: json['meeting_id'] as int?,
      name: json['name'] as String?,
      year: json['year'] as int?,
      description: json['description'] as String?,
      title: json['title'],
      cover: json['cover'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      images: json['images'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'meeting_id': instance.meetingId,
      'name': instance.name,
      'year': instance.year,
      'description': instance.description,
      'title': instance.title,
      'cover': instance.cover,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'images': instance.images,
    };
