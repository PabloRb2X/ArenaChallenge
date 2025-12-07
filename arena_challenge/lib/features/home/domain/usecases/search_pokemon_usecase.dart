import '../entities/pokemon_detail.dart';
import '../repositories/pokemon_repository.dart';

class SearchPokemonUseCase {
  final PokemonRepository repository;

  SearchPokemonUseCase(this.repository);

  Future<PokemonDetail?> call(String name) {
    return repository.searchPokemon(name);
  }
}
