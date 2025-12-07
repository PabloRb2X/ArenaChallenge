import '../entities/pokemon_summary.dart';
import '../entities/pokemon_detail.dart';

abstract class PokemonRepository {
  Future<List<PokemonSummary>> getPokemonList({int limit, int offset});
  Future<PokemonDetail> getPokemonDetail(String nameOrId);
  Future<PokemonDetail?> searchPokemon(String name);
}
