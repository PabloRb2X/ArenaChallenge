import 'package:flutter/material.dart';

import 'package:arena_challenge/core/theme/app_typography.dart';

import '../../utils/home_utils.dart';

class PokemonInfoBadge extends StatelessWidget {
  final String label;
  final String value;
  final bool expanded;

  const PokemonInfoBadge({
    super.key,
    required this.label,
    required this.value,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final child = Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HomePokemonListUtils.infoBadgeHorizontalPadding,
        vertical: HomePokemonListUtils.infoBadgeVerticalPadding,
      ),
      decoration: BoxDecoration(
        color: HomePokemonListUtils.infoBadgeBackground,
        borderRadius: BorderRadius.circular(
          HomePokemonListUtils.infoBadgeBorderRadius,
        ),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: AppTypography.bodySmall.copyWith(
              color: HomePokemonListUtils.infoBadgeLabelColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: HomePokemonListUtils.infoBadgeLabelSpacing,
            ),
            child: Text(value, style: AppTypography.bodyMedium),
          ),
        ],
      ),
    );

    if (expanded) {
      return Row(children: [Expanded(child: child)]);
    }

    return child;
  }
}
