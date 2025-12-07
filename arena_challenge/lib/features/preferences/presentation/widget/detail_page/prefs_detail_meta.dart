import 'package:arena_challenge/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';

class PrefsDetailMeta extends StatelessWidget {
  const PrefsDetailMeta({super.key, required this.pref});

  final PokemonPreference pref;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '${PrefsDetailUtils.originalPokemonPrefix}${pref.pokemonName}',
        style: AppTypography.bodySmall.copyWith(color: Colors.grey.shade700),
      ),
    );
  }
}
