import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_summary.freezed.dart';
part 'pokemon_summary.g.dart';

@freezed
class PokemonSummary with _$PokemonSummary {
  const factory PokemonSummary({required String name, required String url}) =
      _PokemonSummary;

  factory PokemonSummary.fromJson(Map<String, dynamic> json) =>
      _$PokemonSummaryFromJson(json);
}

@freezed
class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    required String next,
    required String? previous,
    required List<PokemonSummary> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}
