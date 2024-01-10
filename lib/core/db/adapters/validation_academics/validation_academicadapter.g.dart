// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_academicadapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValidationAcademicScreenDBAdapter
    extends TypeAdapter<ValidationAcademicScreenDB> {
  @override
  final int typeId = 11;

  @override
  ValidationAcademicScreenDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ValidationAcademicScreenDB(
      status: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ValidationAcademicScreenDB obj) {
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
      other is ValidationAcademicScreenDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
