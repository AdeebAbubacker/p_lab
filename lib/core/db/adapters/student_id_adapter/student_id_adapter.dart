import 'package:hive/hive.dart';
part 'student_id_adapter.g.dart';

@HiveType(typeId: 5)
class StudentIdDB {
  @HiveField(0)
  int name;

  StudentIdDB({
    required this.name,
  });

  factory StudentIdDB.fromJson(Map<String, dynamic> json) {
    return StudentIdDB(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;

    return data;
  }
}
