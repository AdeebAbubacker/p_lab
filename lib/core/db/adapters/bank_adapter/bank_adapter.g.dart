// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BankDBAdapter extends TypeAdapter<BankDB> {
  @override
  final int typeId = 1;

  @override
  BankDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BankDB(
      id: fields[0] as int,
      name: fields[1] as String,
      deletedAt: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, BankDB obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.deletedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BankDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
