import 'package:flutter/material.dart';

import 'package:arena_challenge/core/theme/app_typography.dart';
import '../../domain/entities/pokemon_detail.dart';
import '../../utils/home_utils.dart';
import 'pokemon_type_chip.dart';
import 'pokemon_info_badge.dart';

class PokemonDetailBottomSheet extends StatelessWidget {
  final PokemonDetail detail;

  const PokemonDetailBottomSheet({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding:
          MediaQuery.of(context).viewInsets +
          const EdgeInsets.all(HomePokemonListUtils.detailSheetPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle
          Container(
            width: HomePokemonListUtils.handleWidth,
            height: HomePokemonListUtils.handleHeight,
            margin: const EdgeInsets.only(
              bottom: HomePokemonListUtils.handleBottomMargin,
            ),
            decoration: BoxDecoration(
              color: HomePokemonListUtils.handleColor,
              borderRadius: BorderRadius.circular(
                HomePokemonListUtils.handleBorderRadius,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: HomePokemonListUtils.titleTopSpacing,
            ),
            child: Text(
              detail.name.toUpperCase(),
              style: AppTypography.titleLarge,
            ),
          ),
          if (detail.sprites.frontDefault != null)
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: HomePokemonListUtils.cardBorderRadius,
              ),
              padding: const EdgeInsets.all(
                HomePokemonListUtils.detailSheetPadding - 4,
              ),
              child: Image.network(
                detail.sprites.frontDefault ?? '',
                height: HomePokemonListUtils.imageHeight,
              ),
            ),
          const SizedBox(height: HomePokemonListUtils.sectionSpacing),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: detail.types
                .map((pokemon) => PokemonTypeChip(typeName: pokemon.type.name))
                .toList(),
          ),
          const SizedBox(height: HomePokemonListUtils.sectionSpacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PokemonInfoBadge(
                label: HomeUtils.id,
                value: detail.id.toString(),
              ),
              PokemonInfoBadge(
                label: HomeUtils.height,
                value: detail.height.toString(),
              ),
              PokemonInfoBadge(
                label: HomeUtils.weight,
                value: detail.weight.toString(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: HomePokemonListUtils.infoRowSpacing,
              bottom: HomePokemonListUtils.sectionSpacing,
            ),
            child: PokemonInfoBadge(
              label: HomeUtils.baseExperience,
              value: detail.baseExperience.toString(),
              expanded: true,
            ),
          ),
        ],
      ),
    );
  }
}
