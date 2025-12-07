// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSummaryImpl _$$PokemonSummaryImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSummaryImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonSummaryImplToJson(
        _$PokemonSummaryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PokemonListResponseImpl _$$PokemonListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonListResponseImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonListResponseImplToJson(
        _$PokemonListResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
