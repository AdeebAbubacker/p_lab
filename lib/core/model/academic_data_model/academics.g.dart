// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Academics _$AcademicsFromJson(Map<String, dynamic> json) => Academics(
      id: json['id'] as int?,
      name: json['name'] as String?,
      gender: json['gender'],
      dob: json['dob'] as String?,
      phone: json['phone'],
      email: json['email'],
      image: json['image'],
      inviteId: json['invite_id'],
      schoolId: json['school_id'] as int?,
      schoolName: json['school_name'] as String?,
      address: json['address'],
      districtId: json['district_id'],
      areaId: json['area_id'],
      landmark: json['landmark'],
      route: json['route'],
      bankAccNo: json['bank_acc_no'],
      bankAccName: json['bank_acc_name'],
      bankName: json['bank_name'],
      bankIfsc: json['bank_ifsc'],
      markSslc: json['mark_sslc'] as int?,
      markP1: json['mark_p1'] as int?,
      markP2: json['mark_p2'] as int?,
      regNo: json['reg_no'],
      houseOwnership: json['house_ownership'],
      houseRoof: json['house_roof'],
      houseDrinkingWater: json['house_drinking_water'],
      houseLandSize: json['house_land_size'],
      preferredCollege: json['preferred_college'] as int?,
      preferredCourse: json['preferred_course'] as int?,
      parentAcknowledgement: json['parent_acknowledgement'] as int?,
      studentSignature: json['student_signature'] as int?,
      schoolApproval: json['school_approval'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$AcademicsToJson(Academics instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'phone': instance.phone,
      'email': instance.email,
      'image': instance.image,
      'invite_id': instance.inviteId,
      'school_id': instance.schoolId,
      'school_name': instance.schoolName,
      'address': instance.address,
      'district_id': instance.districtId,
      'area_id': instance.areaId,
      'landmark': instance.landmark,
      'route': instance.route,
      'bank_acc_no': instance.bankAccNo,
      'bank_acc_name': instance.bankAccName,
      'bank_name': instance.bankName,
      'bank_ifsc': instance.bankIfsc,
      'mark_sslc': instance.markSslc,
      'mark_p1': instance.markP1,
      'mark_p2': instance.markP2,
      'reg_no': instance.regNo,
      'house_ownership': instance.houseOwnership,
      'house_roof': instance.houseRoof,
      'house_drinking_water': instance.houseDrinkingWater,
      'house_land_size': instance.houseLandSize,
      'preferred_college': instance.preferredCollege,
      'preferred_course': instance.preferredCourse,
      'parent_acknowledgement': instance.parentAcknowledgement,
      'student_signature': instance.studentSignature,
      'school_approval': instance.schoolApproval,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
