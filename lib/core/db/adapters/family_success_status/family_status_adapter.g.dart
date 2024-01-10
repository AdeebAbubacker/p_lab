// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_status_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FamilyStatusDBAdapter extends TypeAdapter<FamilyStatusDB> {
  @override
  final int typeId = 6;

  @override
  FamilyStatusDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FamilyStatusDB(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FamilyStatusDB obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FamilyStatusDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
