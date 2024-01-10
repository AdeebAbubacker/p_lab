import 'package:hive/hive.dart';
 part 'bank_adapter.g.dart';

@HiveType(typeId: 1)
class BankDB {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  dynamic deletedAt;

  

  BankDB({
    required this.id,
    required this.name,
    required this.deletedAt,
   
  });

  factory BankDB.fromJson(Map<String, dynamic> json) {
    return BankDB(
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
