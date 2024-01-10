// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

College _$CollegeFromJson(Map<String, dynamic> json) => College(
      id: json['id'] as int?,
      name: json['name'] as String?,
      shortName: json['short_name'],
      isPrivate: json['is_private'] as bool?,
      areaId: json['area_id'],
      landmark: json['landmark'],
      coordinates: json['coordinates'],
      comments: json['comments'],
      active: json['active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$CollegeToJson(College instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_name': instance.shortName,
      'is_private': instance.isPrivate,
      'area_id': instance.areaId,
      'landmark': instance.landmark,
      'coordinates': instance.coordinates,
      'comments': instance.comments,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
