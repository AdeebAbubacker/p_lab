// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) => PersonalInfo(
      status: json['status'] as int?,
      count: json['count'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      misc: json['misc'] == null
          ? null
          : Misc.fromJson(json['misc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonalInfoToJson(PersonalInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
      'message': instance.message,
      'data': instance.data,
      'misc': instance.misc,
    };
