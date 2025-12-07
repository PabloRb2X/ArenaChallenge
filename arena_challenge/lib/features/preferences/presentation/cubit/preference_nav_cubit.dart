import 'package:flutter_bloc/flutter_bloc.dart';

enum PreferencesNavTarget { preferencesNew, preferenceDetail }

class PreferencesNavState {
  final PreferencesNavTarget? target;
  final String? preferenceId;

  const PreferencesNavState._({required this.target, this.preferenceId});

  const PreferencesNavState.idle() : this._(target: null);

  const PreferencesNavState.toNew()
    : this._(target: PreferencesNavTarget.preferencesNew);

  const PreferencesNavState.toDetail(String id)
    : this._(target: PreferencesNavTarget.preferenceDetail, preferenceId: id);
}

class PreferencesNavCubit extends Cubit<PreferencesNavState> {
  PreferencesNavCubit() : super(const PreferencesNavState.idle());

  void goToNewPreference() {
    emit(const PreferencesNavState.toNew());
  }

  void goToPreferenceDetail(String id) {
    emit(PreferencesNavState.toDetail(id));
  }

  void reset() {
    emit(const PreferencesNavState.idle());
  }
}
