import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/pokemon_summary.dart';
import '../../utils/home_utils.dart';
import '../cubit/home_api_cubit.dart';
import 'pokemon_card.dart';

class HomePokemonListView extends StatefulWidget {
  final List<PokemonSummary> pokemons;

  const HomePokemonListView({super.key, required this.pokemons});

  @override
  State<HomePokemonListView> createState() => _HomePokemonListViewState();
}

class _HomePokemonListViewState extends State<HomePokemonListView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= HomePokemonListUtils.scrollThreshold) {
      context.read<HomeApiCubit>().loadMorePokemon();
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pokemons.isEmpty) {
      return Center(
        child: Text(HomeUtils.noPokemon, style: AppTypography.bodyMedium),
      );
    }

    return ListView.builder(
      key: const PageStorageKey('home_pokemon_list'),
      controller: _scrollController,
      padding: HomePokemonListUtils.listPadding,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      cacheExtent: 800,
      itemCount: widget.pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = widget.pokemons[index];

        return PokemonCard(key: ValueKey(pokemon.name), summary: pokemon);
      },
    );
  }
}
