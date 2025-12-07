import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';
part 'pokemon_detail.g.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail({
    required int id,
    required String name,
    required int height,
    required int weight,
    @JsonKey(name: 'base_experience') required int baseExperience,
    required List<PokemonTypeSlot> types,
    required Sprites sprites,
  }) = _PokemonDetail;

  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);
}

@freezed
class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({
    required int slot,
    required NamedApiResource type,
  }) = _PokemonTypeSlot;

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}

@freezed
class NamedApiResource with _$NamedApiResource {
  const factory NamedApiResource({required String name, required String url}) =
      _NamedApiResource;

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'front_default') String? frontDefault,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
