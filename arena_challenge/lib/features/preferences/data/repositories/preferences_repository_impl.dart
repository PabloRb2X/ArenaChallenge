import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/repositories/preferences_repository.dart';
import '../datasources/preferences_local_data_source.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  final PreferencesLocalDataSource localDataSource;

  PreferencesRepositoryImpl(this.localDataSource);

  @override
  Future<void> addPreference(PokemonPreference preference) {
    return localDataSource.add(preference);
  }

  @override
  Future<List<PokemonPreference>> getAllPreferences() {
    return localDataSource.getAll();
  }

  @override
  Future<PokemonPreference?> getPreferenceById(String id) {
    return localDataSource.getById(id);
  }

  @override
  Future<void> deletePreference(String id) {
    return localDataSource.delete(id);
  }

  @override
  Future<void> updatePreference(PokemonPreference preference) {
    return localDataSource.update(preference);
  }
}
