// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_id_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentIdDBAdapter extends TypeAdapter<StudentIdDB> {
  @override
  final int typeId = 5;

  @override
  StudentIdDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentIdDB(
      name: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StudentIdDB obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentIdDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
