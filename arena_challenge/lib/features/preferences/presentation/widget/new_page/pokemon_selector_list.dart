import 'package:flutter/material.dart';

import '../../../../../core/theme/app_typography.dart';
import '../../../../home/domain/entities/pokemon_summary.dart';
import '../../../utils/preferences_utils.dart';
import 'pokemon_selector_avatar.dart';

class PokemonSelectorList extends StatelessWidget {
  const PokemonSelectorList({
    super.key,
    required this.pokemons,
    required this.onSelected,
    this.selected,
  });

  final List<PokemonSummary> pokemons;
  final PokemonSummary? selected;
  final ValueChanged<PokemonSummary> onSelected;

  @override
  Widget build(BuildContext context) {
    if (pokemons.isEmpty) {
      return const Center(child: Text(PrefsNewPageUtils.emptyPokemonList));
    }

    final theme = Theme.of(context);

    return ListView.builder(
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        final isSelected = selected?.name == pokemon.name;

        final baseColor = theme.colorScheme.primary;
        final borderColor = isSelected
            ? baseColor.withValues(
                alpha: PrefsNewPageUtils.selectorBorderOpacity,
              )
            : Colors.grey.withValues(
                alpha: PrefsNewPageUtils.selectorUnselectedBorderOpacity,
              );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            borderRadius: BorderRadius.circular(
              PrefsNewPageUtils.selectorItemBorderRadius,
            ),
            onTap: () => onSelected(pokemon),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              padding: const EdgeInsets.symmetric(
                horizontal: PrefsNewPageUtils.selectorItemHorizontalPadding,
                vertical: PrefsNewPageUtils.selectorItemVerticalPadding,
              ),
              decoration: BoxDecoration(
                color: isSelected
                    ? baseColor.withValues(
                        alpha: PrefsNewPageUtils.selectorSelectedOpacity,
                      )
                    : Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(
                  PrefsNewPageUtils.selectorItemBorderRadius,
                ),
                border: Border.all(color: borderColor),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: PokemonSelectorAvatar(name: pokemon.name),
                  ),
                  Expanded(
                    child: Text(
                      pokemon.name.toUpperCase(),
                      style: AppTypography.bodyMedium,
                    ),
                  ),
                  if (isSelected)
                    Icon(Icons.check_circle_rounded, color: baseColor),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
