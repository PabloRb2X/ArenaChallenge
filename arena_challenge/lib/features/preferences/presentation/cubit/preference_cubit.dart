// lib/features/preferences/presentation/cubit/preference_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/domain/entities/pokemon_preference.dart';
import '../../domain/usecases/add_preference_usecase.dart';
import '../../domain/usecases/delete_preference_usecase.dart';
import '../../domain/usecases/get_all_preferences_usecase.dart';
import '../../domain/usecases/get_preference_by_id_usecase.dart';
import '../../domain/usecases/update_preference_usecase.dart';
import 'preference_state.dart';

class PreferenceCubit extends Cubit<PreferenceState> {
  final GetAllPreferencesUseCase getAllUseCase;
  final GetPreferenceByIdUseCase getByIdUseCase;
  final AddPreferenceUseCase addUseCase;
  final UpdatePreferenceUseCase updateUseCase;
  final DeletePreferenceUseCase deleteUseCase;

  PreferenceCubit({
    required this.getAllUseCase,
    required this.getByIdUseCase,
    required this.addUseCase,
    required this.updateUseCase,
    required this.deleteUseCase,
  }) : super(const PreferenceState.initial());

  Future<void> loadPreferences() async {
    emit(const PreferenceState.loading());
    try {
      final list = await getAllUseCase();
      emit(PreferenceState.success(list: list));
    } catch (e) {
      emit(PreferenceState.error(message: e.toString()));
    }
  }

  Future<void> addPreference(PokemonPreference pref) async {
    emit(const PreferenceState.loading());
    try {
      await addUseCase(pref);
      await loadPreferences();
    } catch (e) {
      emit(PreferenceState.error(message: e.toString()));
    }
  }

  Future<void> updatePreference(PokemonPreference pref) async {
    emit(const PreferenceState.loading());
    try {
      await updateUseCase(pref);
      await loadPreferences();
    } catch (e) {
      emit(PreferenceState.error(message: e.toString()));
    }
  }

  Future<void> deletePreference(String id) async {
    emit(const PreferenceState.loading());
    try {
      await deleteUseCase(id);
      await loadPreferences();
    } catch (e) {
      emit(PreferenceState.error(message: e.toString()));
    }
  }

  Future<PokemonPreference?> getById(String id) async {
    try {
      return await getByIdUseCase(id);
    } catch (_) {
      return null;
    }
  }
}
