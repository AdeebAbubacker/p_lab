import 'package:hive/hive.dart';
part 'family_status_adapter.g.dart';

@HiveType(typeId: 6)
class FamilyStatusDB {
  @HiveField(0)
  int id;

  FamilyStatusDB({
    required this.id,
  });

  factory FamilyStatusDB.fromJson(Map<String, dynamic> json) {
    return FamilyStatusDB(
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;

    return data;
  }
}
