import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pokemon_summary.dart';

part 'home_api_state.freezed.dart';

@freezed
class HomeApiState with _$HomeApiState {
  const factory HomeApiState.initial({
    @Default([]) List<PokemonSummary> list,
    @Default(false) bool searchMode,
  }) = _Initial;

  const factory HomeApiState.loading({
    @Default([]) List<PokemonSummary> list,
    @Default(false) bool searchMode,
  }) = _Loading;

  const factory HomeApiState.success({
    required List<PokemonSummary> list,
    @Default(false) bool searchMode,
  }) = _Success;

  const factory HomeApiState.error({
    required String message,
    @Default([]) List<PokemonSummary> list,
    @Default(false) bool searchMode,
  }) = _Error;
}
