// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) => Auth(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String?,
    );

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
    };
