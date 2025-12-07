import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/repositories/preferences_repository.dart';

class AddPreferenceUseCase {
  final PreferencesRepository repository;

  AddPreferenceUseCase(this.repository);

  Future<void> call(PokemonPreference pref) {
    return repository.addPreference(pref);
  }
}
