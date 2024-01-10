// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      news: json['news'] as String?,
      date: json['date'] as String?,
      page: json['page'] as String?,
      active: json['active'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'news': instance.news,
      'date': instance.date,
      'page': instance.page,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
