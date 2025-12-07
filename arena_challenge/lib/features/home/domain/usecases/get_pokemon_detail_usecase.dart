import '../entities/pokemon_detail.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonDetailUseCase {
  final PokemonRepository repository;

  GetPokemonDetailUseCase(this.repository);

  Future<PokemonDetail> call(String nameOrId) {
    return repository.getPokemonDetail(nameOrId);
  }
}
