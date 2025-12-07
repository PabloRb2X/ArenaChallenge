import '../entities/pokemon_summary.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonListUseCase {
  final PokemonRepository repository;

  GetPokemonListUseCase(this.repository);

  Future<List<PokemonSummary>> call({int limit = 50, int offset = 0}) {
    return repository.getPokemonList(limit: limit, offset: offset);
  }
}
