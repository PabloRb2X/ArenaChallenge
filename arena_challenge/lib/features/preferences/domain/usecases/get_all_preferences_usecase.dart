import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/repositories/preferences_repository.dart';

class GetAllPreferencesUseCase {
  final PreferencesRepository repository;

  GetAllPreferencesUseCase(this.repository);

  Future<List<PokemonPreference>> call() {
    return repository.getAllPreferences();
  }
}
