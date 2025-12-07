import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';

class PreferenceText extends StatelessWidget {
  const PreferenceText({super.key, required this.pref});

  final PokemonPreference pref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: PreferencesListUtils.titleBottomSpacing,
          ),
          child: Text(
            pref.customName,
            style: AppTypography.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: PreferencesListUtils.tagSpacing,
              ),
              child: Icon(
                Icons.tag,
                size: PreferencesListUtils.tagIconSize,
                color: theme.colorScheme.primary.withValues(alpha: 0.8),
              ),
            ),
            Expanded(
              child: Text(
                pref.pokemonName,
                style: AppTypography.bodySmall.copyWith(
                  color: Colors.grey.shade600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
