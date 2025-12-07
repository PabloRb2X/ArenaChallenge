import 'package:hive/hive.dart';

part 'pokemon_preference.g.dart';

@HiveType(typeId: 1)
class PokemonPreference extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  int pokemonId;

  @HiveField(2)
  String pokemonName;

  @HiveField(3)
  String customName;

  @HiveField(4)
  String? spriteUrl;

  PokemonPreference({
    required this.id,
    required this.pokemonId,
    required this.pokemonName,
    required this.customName,
    this.spriteUrl,
  });
}
