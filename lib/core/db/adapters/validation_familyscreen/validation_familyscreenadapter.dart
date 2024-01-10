import 'package:hive/hive.dart';

part 'validation_familyscreenadapter.g.dart';

@HiveType(typeId: 10)
class ValidationFamilyScreenDB {
  @HiveField(0)
  int status;

  ValidationFamilyScreenDB({
    this.status = 0, 
  });

  factory ValidationFamilyScreenDB.fromJson(Map<String, dynamic> json) {
    return ValidationFamilyScreenDB(
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
