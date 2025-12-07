import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:arena_challenge/features/preferences/utils/preferences_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/global_error.dart';
import '../../../../../core/widgets/global_loading.dart';
import '../../../../home/domain/entities/pokemon_summary.dart';
import '../../../../home/presentation/cubit/home_api_cubit.dart';
import '../../../../home/presentation/cubit/home_api_state.dart';
import 'pokemon_selector_list.dart';

class PokemonSelectorSection extends StatelessWidget {
  const PokemonSelectorSection({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final PokemonSummary? selected;
  final ValueChanged<PokemonSummary> onSelected;

  @override
  Widget build(BuildContext context) {
    final apiCubit = context.read<HomeApiCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          PrefsNewPageUtils.selectorTitle,
          style: AppTypography.bodyMedium.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: PrefsNewPageUtils.selectorTitleBottomSpacing),
        Expanded(
          child: BlocBuilder<HomeApiCubit, HomeApiState>(
            builder: (context, state) {
              return state.when(
                initial: (list, searchMode) => const GlobalLoading(),
                loading: (list, searchMode) => const GlobalLoading(),
                success: (list, searchMode) => PokemonSelectorList(
                  pokemons: list,
                  selected: selected,
                  onSelected: onSelected,
                ),
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
