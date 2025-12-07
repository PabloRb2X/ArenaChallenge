// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_preference.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonPreferenceAdapter extends TypeAdapter<PokemonPreference> {
  @override
  final int typeId = 1;

  @override
  PokemonPreference read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonPreference(
      id: fields[0] as String,
      pokemonId: fields[1] as int,
      pokemonName: fields[2] as String,
      customName: fields[3] as String,
      spriteUrl: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonPreference obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pokemonId)
      ..writeByte(2)
      ..write(obj.pokemonName)
      ..writeByte(3)
      ..write(obj.customName)
      ..writeByte(4)
      ..write(obj.spriteUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonPreferenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
