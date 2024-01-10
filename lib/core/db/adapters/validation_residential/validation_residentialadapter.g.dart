// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_residentialadapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValidationResidentailScreenDBAdapter
    extends TypeAdapter<ValidationResidentailScreenDB> {
  @override
  final int typeId = 12;

  @override
  ValidationResidentailScreenDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValidationResidentailScreenDB(
      status: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ValidationResidentailScreenDB obj) {
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
      other is ValidationResidentailScreenDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
