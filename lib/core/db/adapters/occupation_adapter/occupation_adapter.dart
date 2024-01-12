import 'package:hive/hive.dart';
 part 'occupation_adapter.g.dart';



@HiveType(typeId: 7)
class OccupationDB {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

    @HiveField(2)
  int active;

  @HiveField(3)
  dynamic deleted_at;

  OccupationDB({
    required this.id,
    required this.name, required this.active,
    required this.deleted_at,
  });

  factory OccupationDB.fromJson(Map<String, dynamic> json) {
    return OccupationDB(
      id: json['id'],
      name: json['name'],
      active: json['active'],
      deleted_at: json['deleted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['active'] = active;
    data['deleted_at'] = deleted_at;
    return data;
  }
}
