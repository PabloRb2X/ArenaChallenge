import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';
import '../../cubit/cubit.dart';
import 'preference_avatar.dart';
import 'preference_text.dart';

class PreferenceCard extends StatelessWidget {
  const PreferenceCard({super.key, required this.pref});

  final PokemonPreference pref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final prefsCubit = context.read<PreferenceCubit>();
    final navCubit = context.read<PreferencesNavCubit>();

    return Padding(
      padding: PreferencesListUtils.cardOuterPadding,
      child: InkWell(
        borderRadius: PreferencesListUtils.cardRadius,
        onTap: () => navCubit.goToPreferenceDetail(pref.id),
        child: Card(
          elevation: PreferencesListUtils.cardElevation,
          shape: RoundedRectangleBorder(
            borderRadius: PreferencesListUtils.cardRadius,
          ),
          child: Padding(
            padding: PreferencesListUtils.cardInnerPadding,
            child: Row(
              children: [
                PreferenceAvatar(spriteUrl: pref.spriteUrl),
                const SizedBox(width: 12),
                Expanded(child: PreferenceText(pref: pref)),
                IconButton(
                  icon: const Icon(Icons.delete),
                  tooltip: PreferencesListUtils.deleteTooltip,
                  color: theme.colorScheme.error.withValues(
                    alpha: PreferencesListUtils.deleteIconOpacity,
                  ),
                  onPressed: () => prefsCubit.deletePreference(pref.id),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
