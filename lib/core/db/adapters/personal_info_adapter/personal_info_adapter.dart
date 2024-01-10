import 'package:hive/hive.dart';
part 'personal_info_adapter.g.dart';

@HiveType(typeId: 2)
class personalInfoDB {
  @HiveField(0)
  String name;

  @HiveField(1)
  bool gender;

  @HiveField(2)
  DateTime dob;

  @HiveField(3)
  String address;

  @HiveField(4)
  var mobno;

  @HiveField(5)
  String email;

  @HiveField(6)
  bool doyouHaveBankAcc;

  @HiveField(7)
  String nameasPerBank;

  @HiveField(8)
  var AccNumber;

  @HiveField(9)
  String bankName;

  @HiveField(10)
  var BranchIFSC;

  personalInfoDB({
    required this.name,
    required this.gender,
    required this.dob,
    required this.address,
    required this.mobno,
    required this.email,
    required this.doyouHaveBankAcc,
    required this.nameasPerBank,
    required this.AccNumber,
    required this.bankName,
    required this.BranchIFSC,
  });

  factory personalInfoDB.fromJson(Map<String, dynamic> json) {
    return personalInfoDB(
        name: json['name'],
        gender: json['gender'],
        dob: json['dob'],
        address: json['address'],
        mobno: json['mobno'],
        email: json['email'],
        doyouHaveBankAcc: json['doyouHaveBankAcc'],
        nameasPerBank: json['nameasPerBank'],
        AccNumber: json['AccNumber'],
        bankName: json['bankName'],
        BranchIFSC: json['BranchIFSC']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['gender'] = gender;
    data['dob'] = dob;
    data['address'] = address;
    data['mobno'] = mobno;
    data['email'] = email;
    data['doyouHaveBankAcc'] = doyouHaveBankAcc;
    data['nameasPerBank'] = nameasPerBank;
    data['AccNumber'] = AccNumber;
    data['bankName'] = bankName;
    data['BranchIFSC'] = BranchIFSC;
    return data;
  }
}
