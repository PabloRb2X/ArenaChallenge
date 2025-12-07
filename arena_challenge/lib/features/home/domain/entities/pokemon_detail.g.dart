// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailImpl _$$PokemonDetailImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDetailImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      baseExperience: (json['base_experience'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonDetailImplToJson(_$PokemonDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'base_experience': instance.baseExperience,
      'types': instance.types,
      'sprites': instance.sprites,
    };

_$PokemonTypeSlotImpl _$$PokemonTypeSlotImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeSlotImpl(
      slot: (json['slot'] as num).toInt(),
      type: NamedApiResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeSlotImplToJson(
        _$PokemonTypeSlotImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$NamedApiResourceImpl _$$NamedApiResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$NamedApiResourceImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedApiResourceImplToJson(
        _$NamedApiResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };
