import 'package:hive/hive.dart';

part 'validation_personalinfoadapter.g.dart';

@HiveType(typeId: 9)
class ValidationPersonalInfoScreenDB {
  @HiveField(0)
  int status;

  ValidationPersonalInfoScreenDB({
    this.status = 0, 
  });

  factory ValidationPersonalInfoScreenDB.fromJson(Map<String, dynamic> json) {
    return ValidationPersonalInfoScreenDB(
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
