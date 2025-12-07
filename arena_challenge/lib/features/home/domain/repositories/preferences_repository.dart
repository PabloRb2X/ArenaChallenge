import '../entities/pokemon_preference.dart';

abstract class PreferencesRepository {
  Future<List<PokemonPreference>> getAllPreferences();

  Future<PokemonPreference?> getPreferenceById(String id);

  Future<void> addPreference(PokemonPreference preference);

  Future<void> updatePreference(PokemonPreference preference);

  Future<void> deletePreference(String id);
}
