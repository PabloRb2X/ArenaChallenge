import 'package:flutter/material.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';
import 'prefs_detail_avatar.dart';

class PrefsDetailHeader extends StatelessWidget {
  const PrefsDetailHeader({super.key, required this.pref});

  final PokemonPreference pref;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(PrefsDetailUtils.headerCardPadding),
        child: Padding(
          padding: const EdgeInsets.only(
            right: PrefsDetailUtils.headerTextSpacing,
          ),
          child: PrefsDetailAvatar(spriteUrl: pref.spriteUrl),
        ),
      ),
    );
  }
}
