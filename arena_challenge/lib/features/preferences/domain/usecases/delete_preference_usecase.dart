import '../../../home/domain/repositories/preferences_repository.dart';

class DeletePreferenceUseCase {
  final PreferencesRepository repository;

  DeletePreferenceUseCase(this.repository);

  Future<void> call(String id) {
    return repository.deletePreference(id);
  }
}
