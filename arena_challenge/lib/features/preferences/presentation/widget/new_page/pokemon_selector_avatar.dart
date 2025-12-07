import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../../../utils/preferences_utils.dart';

class PokemonSelectorAvatar extends StatelessWidget {
  const PokemonSelectorAvatar({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initial = name.isNotEmpty ? name[0].toUpperCase() : '?';

    return Container(
      width: PrefsNewPageUtils.selectorAvatarSize,
      height: PrefsNewPageUtils.selectorAvatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.primary.withValues(
          alpha: PrefsNewPageUtils.selectorSelectedOpacity,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        initial,
        style: AppTypography.bodySmall.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: PrefsNewPageUtils.selectorAvatarTextSize,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
