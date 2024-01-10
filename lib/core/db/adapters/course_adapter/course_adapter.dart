import 'package:hive/hive.dart';
 part 'course_adapter.g.dart';

@HiveType(typeId: 3)
class CourseDB {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;



  CourseDB({
    required this.id,
    required this.name,
 
  });

  factory CourseDB.fromJson(Map<String, dynamic> json) {
    return CourseDB(
      id: json['id'],
      name: json['name'],
     
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
