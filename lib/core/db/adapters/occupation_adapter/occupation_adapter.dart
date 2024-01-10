import 'package:hive/hive.dart';
 part 'occupation_adapter.g.dart';

@HiveType(typeId: 7)
class OccupationDB {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  dynamic deletedAt;

  OccupationDB({
    required this.id,
    required this.name,
    required this.deletedAt,
  });

  factory OccupationDB.fromJson(Map<String, dynamic> json) {
    return OccupationDB(
      id: json['id'],
      name: json['name'],
      deletedAt: json['deleted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
