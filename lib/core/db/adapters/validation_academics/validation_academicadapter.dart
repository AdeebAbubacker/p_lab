import 'package:hive/hive.dart';

part 'validation_academicadapter.g.dart';

@HiveType(typeId: 11)
class ValidationAcademicScreenDB {
  @HiveField(0)
  int status;

  ValidationAcademicScreenDB({
    this.status = 0, 
  });

  factory ValidationAcademicScreenDB.fromJson(Map<String, dynamic> json) {
    return ValidationAcademicScreenDB(
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
