import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/repositories/preferences_repository.dart';

class UpdatePreferenceUseCase {
  final PreferencesRepository repository;

  UpdatePreferenceUseCase(this.repository);

  Future<void> call(PokemonPreference pref) {
    return repository.updatePreference(pref);
  }
}
