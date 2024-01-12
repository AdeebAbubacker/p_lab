// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class qualificationDBAdapter extends TypeAdapter<qualificationDB> {
  @override
  final int typeId = 13;

  @override
  qualificationDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return qualificationDB(
      id: fields[0] as int,
      name: fields[1] as String,
      status: fields[2] as bool,
      deleted_at: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, qualificationDB obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.deleted_at);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is qualificationDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
