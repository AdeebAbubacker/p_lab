// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_familyscreenadapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValidationFamilyScreenDBAdapter
    extends TypeAdapter<ValidationFamilyScreenDB> {
  @override
  final int typeId = 10;

  @override
  ValidationFamilyScreenDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValidationFamilyScreenDB(
      status: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ValidationFamilyScreenDB obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValidationFamilyScreenDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
