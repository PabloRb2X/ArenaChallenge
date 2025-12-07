import 'package:flutter/material.dart';

import 'package:arena_challenge/core/theme/app_typography.dart';
import '../../utils/home_utils.dart';

class PokemonTypeChip extends StatelessWidget {
  final String typeName;

  const PokemonTypeChip({super.key, required this.typeName});

  @override
  Widget build(BuildContext context) {
    final color = HomePokemonListUtils.typeColor(typeName);
    final label = HomePokemonListUtils.capitalize(typeName);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HomePokemonListUtils.typeChipHorizontalPadding,
        vertical: HomePokemonListUtils.typeChipVerticalPadding,
      ),
      decoration: BoxDecoration(
        color: color.withValues(
          alpha: HomePokemonListUtils.typeChipBackgroundOpacity,
        ),
        borderRadius: BorderRadius.circular(
          HomePokemonListUtils.typeChipBorderRadius,
        ),
        border: Border.all(
          color: color.withValues(
            alpha: HomePokemonListUtils.typeChipBorderOpacity,
          ),
          width: HomePokemonListUtils.typeChipBorderWidth,
        ),
      ),
      child: Text(
        label,
        style: AppTypography.labelSmall.copyWith(color: color),
      ),
    );
  }
}
