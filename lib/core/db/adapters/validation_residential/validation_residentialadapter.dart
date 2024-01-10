import 'package:hive/hive.dart';

part 'validation_residentialadapter.g.dart';

@HiveType(typeId: 12)
class ValidationResidentailScreenDB {
  @HiveField(0)
  int status;

  ValidationResidentailScreenDB({
    this.status = 0, 
  });

  factory ValidationResidentailScreenDB.fromJson(Map<String, dynamic> json) {
    return ValidationResidentailScreenDB(
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
