// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCourse _$SearchCourseFromJson(Map<String, dynamic> json) => SearchCourse(
      status: json['status'] as int?,
      count: json['count'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      misc: json['misc'] as List<dynamic>?,
      paginate: json['paginate'] == null
          ? null
          : Paginate.fromJson(json['paginate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchCourseToJson(SearchCourse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
      'message': instance.message,
      'data': instance.data,
      'misc': instance.misc,
      'paginate': instance.paginate,
    };
