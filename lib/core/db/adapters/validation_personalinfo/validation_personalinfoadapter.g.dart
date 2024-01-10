// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_personalinfoadapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValidationPersonalInfoScreenDBAdapter
    extends TypeAdapter<ValidationPersonalInfoScreenDB> {
  @override
  final int typeId = 9;

  @override
  ValidationPersonalInfoScreenDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValidationPersonalInfoScreenDB(
      status: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ValidationPersonalInfoScreenDB obj) {
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
      other is ValidationPersonalInfoScreenDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
