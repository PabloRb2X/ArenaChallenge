// lib/features/pokemon_api/data/datasources/pokemon_api_service.dart
import 'package:arena_challenge/core/config/app_config.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/pokemon_summary.dart';
import '../../domain/entities/pokemon_detail.dart';

class PokemonApiService {
  final Dio _dio;

  PokemonApiService(this._dio);

  Future<PokemonListResponse> fetchPokemonList({
    int limit = 50,
    int offset = 0,
  }) async {
    final response = await _dio.get(
      '${AppConfig.baseUrl}${AppConfig.pokemonEndpoint}',
      queryParameters: {'limit': limit, 'offset': offset},
    );

    return PokemonListResponse.fromJson(response.data);
  }

  Future<PokemonDetail> fetchPokemonDetail(String nameOrId) async {
    final response = await _dio.get(
      '${AppConfig.baseUrl}${AppConfig.pokemonEndpoint}/$nameOrId',
    );

    return PokemonDetail.fromJson(response.data);
  }

  Future<PokemonDetail?> searchPokemonByName(String name) async {
    try {
      final response = await _dio.get(
        '${AppConfig.baseUrl}${AppConfig.pokemonEndpoint}/${name.toLowerCase()}',
      );

      return PokemonDetail.fromJson(response.data);
    } catch (_) {
      return null;
    }
  }
}
