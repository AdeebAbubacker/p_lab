import 'package:json_annotation/json_annotation.dart';

part 'academics.g.dart';

@JsonSerializable()
class Academics {
  int? id;
  String? name;
  dynamic gender;
  String? dob;
  dynamic phone;
  dynamic email;
  dynamic image;
  @JsonKey(name: 'invite_id')
  dynamic inviteId;
  @JsonKey(name: 'school_id')
  int? schoolId;
  @JsonKey(name: 'school_name')
  String? schoolName;
  dynamic address;
  @JsonKey(name: 'district_id')
  dynamic districtId;
  @JsonKey(name: 'area_id')
  dynamic areaId;
  dynamic landmark;
  dynamic route;
  @JsonKey(name: 'bank_acc_no')
  dynamic bankAccNo;
  @JsonKey(name: 'bank_acc_name')
  dynamic bankAccName;
  @JsonKey(name: 'bank_name')
  dynamic bankName;
  @JsonKey(name: 'bank_ifsc')
  dynamic bankIfsc;
  @JsonKey(name: 'mark_sslc')
  int? markSslc;
  @JsonKey(name: 'mark_p1')
  int? markP1;
  @JsonKey(name: 'mark_p2')
  int? markP2;
  @JsonKey(name: 'reg_no')
  dynamic regNo;
  @JsonKey(name: 'house_ownership')
  dynamic houseOwnership;
  @JsonKey(name: 'house_roof')
  dynamic houseRoof;
  @JsonKey(name: 'house_drinking_water')
  dynamic houseDrinkingWater;
  @JsonKey(name: 'house_land_size')
  dynamic houseLandSize;
  @JsonKey(name: 'preferred_college')
  int? preferredCollege;
  @JsonKey(name: 'preferred_course')
  int? preferredCourse;
  @JsonKey(name: 'parent_acknowledgement')
  int? parentAcknowledgement;
  @JsonKey(name: 'student_signature')
  int? studentSignature;
  @JsonKey(name: 'school_approval')
  int? schoolApproval;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'deleted_at')
  DateTime? deletedAt;

  Academics({
    this.id,
    this.name,
    this.gender,
    this.dob,
    this.phone,
    this.email,
    this.image,
    this.inviteId,
    this.schoolId,
    this.schoolName,
    this.address,
    this.districtId,
    this.areaId,
    this.landmark,
    this.route,
    this.bankAccNo,
    this.bankAccName,
    this.bankName,
    this.bankIfsc,
    this.markSslc,
    this.markP1,
    this.markP2,
    this.regNo,
    this.houseOwnership,
    this.houseRoof,
    this.houseDrinkingWater,
    this.houseLandSize,
    this.preferredCollege,
    this.preferredCourse,
    this.parentAcknowledgement,
    this.studentSignature,
    this.schoolApproval,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Academics.fromJson(Map<String, dynamic> json) {
    return _$AcademicsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AcademicsToJson(this);
}
