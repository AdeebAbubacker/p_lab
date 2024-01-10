// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicDataModel _$AcademicDataModelFromJson(Map<String, dynamic> json) =>
    AcademicDataModel(
      status: json['status'] as int?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      needCount: json['need_count'] as bool?,
      count: json['count'] as int?,
      misc: json['misc'] == null
          ? null
          : Misc.fromJson(json['misc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcademicDataModelToJson(AcademicDataModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'need_count': instance.needCount,
      'count': instance.count,
      'misc': instance.misc,
    };
