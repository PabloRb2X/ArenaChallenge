import 'dart:async';

import 'package:arena_challenge/core/config/app_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/pokemon_summary.dart';
import '../../domain/entities/pokemon_detail.dart';
import '../../domain/usecases/get_pokemon_list_usecase.dart';
import '../../domain/usecases/get_pokemon_detail_usecase.dart';
import '../../domain/usecases/search_pokemon_usecase.dart';
import 'cubit.dart';

class HomeApiCubit extends Cubit<HomeApiState> {
  final GetPokemonListUseCase getPokemonListUseCase;
  final GetPokemonDetailUseCase getPokemonDetailUseCase;
  final SearchPokemonUseCase searchPokemonUseCase;

  static const int _pageSize = 50;

  bool _isLoadingMore = false;
  int _offset = 0;

  // 🔹 Para manejar debounce en la búsqueda
  Timer? _searchDebounce;
  String _lastQuery = '';

  HomeApiCubit({
    required this.getPokemonListUseCase,
    required this.getPokemonDetailUseCase,
    required this.searchPokemonUseCase,
  }) : super(const HomeApiState.initial());

  Future<void> loadPokemonList() async {
    // Reset de paginación
    _offset = 0;
    _isLoadingMore = false;

    emit(const HomeApiState.loading());
    try {
      final list = await getPokemonListUseCase(
        limit: _pageSize,
        offset: _offset,
      );
      _offset += list.length;

      emit(HomeApiState.success(list: list));
    } catch (e) {
      emit(HomeApiState.error(message: e.toString()));
    }
  }

  /// Scroll infinito: carga más manteniendo lo ya obtenido
  Future<void> loadMorePokemon() async {
    // No paginamos en modo búsqueda
    if (state.searchMode) return;
    if (_isLoadingMore) return;

    _isLoadingMore = true;

    final currentList = state.list;

    try {
      // Paginación real usando offset
      final nextPage = await getPokemonListUseCase(
        limit: _pageSize,
        offset: _offset,
      );

      if (nextPage.isEmpty) {
        _isLoadingMore = false;
        return;
      }

      _offset += nextPage.length;

      final updatedList = [...currentList, ...nextPage];

      // Emitimos solo si realmente cambió algo
      if (updatedList.length != currentList.length) {
        emit(HomeApiState.success(list: updatedList));
      }
    } catch (e) {
      // En error conservamos lo que ya traíamos
      emit(HomeApiState.error(message: e.toString(), list: currentList));
    } finally {
      _isLoadingMore = false;
    }
  }

  /// Búsqueda con debounce y sin pisar resultados de forma rara
  Future<void> searchPokemon(String query) async {
    _lastQuery = query;
    _searchDebounce?.cancel();

    // Si está vacío, salimos de modo búsqueda y recargamos lista tras un pequeño delay
    if (query.isEmpty) {
      _searchDebounce = Timer(const Duration(milliseconds: 300), () async {
        if (_lastQuery.isEmpty) {
          await loadPokemonList();
        }
      });
      return;
    }

    // Debounce para no pegarle a la API en cada tecla
    _searchDebounce = Timer(const Duration(milliseconds: 350), () async {
      if (_lastQuery != query) return;

      // Mantenemos la lista actual mientras cargamos resultados de búsqueda
      emit(HomeApiState.loading(list: state.list, searchMode: true));

      try {
        final result = await searchPokemonUseCase(query);

        if (result == null) {
          emit(
            HomeApiState.error(
              message: 'Pokémon missing',
              list: state.list,
              searchMode: true,
            ),
          );
        } else {
          final summary = PokemonSummary(
            name: result.name,
            url:
                '${AppConfig.baseUrl}${AppConfig.pokemonEndpoint}/${result.id}/',
          );

          emit(HomeApiState.success(list: [summary], searchMode: true));
        }
      } catch (e) {
        emit(
          HomeApiState.error(
            message: e.toString(),
            list: state.list,
            searchMode: true,
          ),
        );
      }
    });
  }

  Future<PokemonDetail> loadDetail(String nameOrId) {
    return getPokemonDetailUseCase(nameOrId);
  }

  @override
  Future<void> close() {
    _searchDebounce?.cancel();
    return super.close();
  }
}
