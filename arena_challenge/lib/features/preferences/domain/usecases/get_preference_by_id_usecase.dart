import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/repositories/preferences_repository.dart';

class GetPreferenceByIdUseCase {
  final PreferencesRepository repository;

  GetPreferenceByIdUseCase(this.repository);

  Future<PokemonPreference?> call(String id) {
    return repository.getPreferenceById(id);
  }
}
