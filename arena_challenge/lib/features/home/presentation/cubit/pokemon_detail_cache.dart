// lib/features/home/widget/pokemon_detail_cache.dart
import 'package:arena_challenge/features/home/domain/entities/pokemon_detail.dart';

import 'home_api_cubit.dart';

class PokemonDetailCache {
  static final Map<String, PokemonDetail> _cache = {};

  static Future<PokemonDetail> get(String name, HomeApiCubit cubit) async {
    if (_cache.containsKey(name)) return _cache[name]!;
    final detail = await cubit.loadDetail(name);
    _cache[name] = detail;
    return detail;
  }
}
