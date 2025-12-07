import '../../domain/entities/pokemon_summary.dart';
import '../../domain/entities/pokemon_detail.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_api_service.dart';

class PokemonApiRepositoryImpl implements PokemonRepository {
  final PokemonApiService apiService;

  PokemonApiRepositoryImpl(this.apiService);

  @override
  Future<List<PokemonSummary>> getPokemonList({
    int limit = 50,
    int offset = 0,
  }) async {
    final resp = await apiService.fetchPokemonList(
      limit: limit,
      offset: offset,
    );
    return resp.results;
  }

  @override
  Future<PokemonDetail> getPokemonDetail(String nameOrId) {
    return apiService.fetchPokemonDetail(nameOrId);
  }

  @override
  Future<PokemonDetail?> searchPokemon(String name) {
    return apiService.searchPokemonByName(name);
  }
}
