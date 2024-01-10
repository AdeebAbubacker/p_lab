// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      ownership: json['ownership'] as String?,
      roof: json['roof'] as String?,
      drinkingWater: json['drinking_water'] as String?,
      landSize: json['land_size'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'ownership': instance.ownership,
      'roof': instance.roof,
      'drinking_water': instance.drinkingWater,
      'land_size': instance.landSize,
    };
