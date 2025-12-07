import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/global_error.dart';
import '../../../../core/widgets/global_loading.dart';
import '../cubit/cubit.dart';
import 'home_pokemon_list_view.dart';
import 'home_search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final apiCubit = context.read<HomeApiCubit>();

    return Column(
      children: [
        const HomeSearchBar(),
        Expanded(
          child: BlocBuilder<HomeApiCubit, HomeApiState>(
            builder: (context, state) {
              return state.when(
                initial: (list, searchMode) => const GlobalLoading(),
                loading: (list, searchMode) => list.isEmpty
                    ? const GlobalLoading()
                    : HomePokemonListView(pokemons: list),
                success: (list, searchMode) =>
                    HomePokemonListView(pokemons: list),
                error: (message, list, searchMode) => GlobalError(
                  message: message,
                  onRetry: () => apiCubit.loadPokemonList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
