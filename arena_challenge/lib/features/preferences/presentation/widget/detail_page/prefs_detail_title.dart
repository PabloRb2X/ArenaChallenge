import 'package:flutter/material.dart';

import '../../../../../core/theme/app_typography.dart';
import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';

class PrefsDetailTitle extends StatelessWidget {
  const PrefsDetailTitle({super.key, required this.pref});

  final PokemonPreference pref;

  @override
  Widget build(BuildContext context) {
    final displayName = pref.customName.isNotEmpty
        ? pref.customName
        : PrefsDetailUtils.titleFallback;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            width: PrefsDetailUtils.iconSize,
            height: PrefsDetailUtils.iconSize,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: PrefsDetailUtils.iconBgOpacity,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withValues(
                  alpha: PrefsDetailUtils.iconBorderOpacity,
                ),
                width: PrefsDetailUtils.iconBorderWidth,
              ),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: PrefsDetailUtils.iconInternalSize,
            ),
          ),
        ),
        Expanded(
          child: Text(
            displayName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.titleLarge.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
