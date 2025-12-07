import 'package:arena_challenge/features/preferences/utils/preferences_utils.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_typography.dart';

class EmptyPrefsView extends StatelessWidget {
  const EmptyPrefsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.catching_pokemon,
            size: PreferencesListUtils.emptyIconSize,
            color: theme.colorScheme.primary.withValues(
              alpha: PreferencesListUtils.emptyIconOpacity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: PreferencesListUtils.emptyTitleSpacing,
              bottom: PreferencesListUtils.emptySubtitleSpacing,
            ),
            child: Text(
              PreferencesListUtils.emptyTitle,
              style: AppTypography.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            PreferencesListUtils.emptySubtitle,
            style: AppTypography.bodySmall.copyWith(
              color: Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
