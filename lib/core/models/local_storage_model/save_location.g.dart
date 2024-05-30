// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveLocationAdapter extends TypeAdapter<SaveLocation> {
  @override
  final int typeId = 0;

  @override
  SaveLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveLocation(
      name: fields[0] as String,
      latitude: fields[1] as double,
      longitude: fields[2] as double,
      imagePath: fields[3] as String,
      distance: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SaveLocation obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.imagePath)
      ..writeByte(4)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
