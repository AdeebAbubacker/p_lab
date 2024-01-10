// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_college.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCollege _$SearchCollegeFromJson(Map<String, dynamic> json) =>
    SearchCollege(
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

Map<String, dynamic> _$SearchCollegeToJson(SearchCollege instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
      'message': instance.message,
      'data': instance.data,
      'misc': instance.misc,
      'paginate': instance.paginate,
    };
