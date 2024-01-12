import 'package:hive/hive.dart';
part 'qualification_adapter.g.dart';



@HiveType(typeId: 13)
class qualificationDB {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  bool status;

  @HiveField(3)
  dynamic deleted_at;



  qualificationDB({
    required this.id,
    required this.name,
    required this.status,
 required this.deleted_at,
  });

  factory qualificationDB.fromJson(Map<String, dynamic> json) {
    return qualificationDB(
        id: json['id'],
        name: json['name'],
        status: json['status'],
       deleted_at: json['deleted_at'],);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
   data['deleted_at'] = deleted_at;
    return data;
  }
}
