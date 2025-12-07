import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/pokemon_preference.dart';

part 'preference_state.freezed.dart';

@freezed
class PreferenceState with _$PreferenceState {
  const factory PreferenceState.initial({
    @Default([]) List<PokemonPreference> list,
  }) = _Initial;

  const factory PreferenceState.loading({
    @Default([]) List<PokemonPreference> list,
  }) = _Loading;

  const factory PreferenceState.success({
    required List<PokemonPreference> list,
  }) = _Success;

  const factory PreferenceState.error({
    required String message,
    @Default([]) List<PokemonPreference> list,
  }) = _Error;
}
