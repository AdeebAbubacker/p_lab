// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Misc _$MiscFromJson(Map<String, dynamic> json) => Misc(
      selectedYear: json['selected_year'] as String?,
      latestYear: json['latest_year'] as String?,
      availableYears: (json['available_years'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MiscToJson(Misc instance) => <String, dynamic>{
      'selected_year': instance.selectedYear,
      'latest_year': instance.latestYear,
      'available_years': instance.availableYears,
    };
