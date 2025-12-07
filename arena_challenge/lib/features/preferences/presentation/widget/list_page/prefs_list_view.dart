import 'package:flutter/material.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';
import 'empty_prefs_view.dart';
import 'preference_card.dart';

class PrefsListView extends StatelessWidget {
  final List<PokemonPreference> list;

  const PrefsListView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const EmptyPrefsView();
    }

    return ListView.builder(
      padding: PreferencesListUtils.listPadding,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final pref = list[index];
        return PreferenceCard(pref: pref);
      },
    );
  }
}
