// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LemmaAdapter extends TypeAdapter<Lemma> {
  @override
  final int typeId = 0;

  @override
  Lemma read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Lemma(
      english: fields[0] as String,
      uzbek: fields[1] as String,
      isFav: fields[2] as bool,
      id: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Lemma obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.english)
      ..writeByte(1)
      ..write(obj.uzbek)
      ..writeByte(2)
      ..write(obj.isFav)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LemmaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
