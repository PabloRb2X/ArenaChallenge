import 'package:flutter/material.dart';

import '../../../../home/domain/entities/pokemon_preference.dart';
import '../../../utils/preferences_utils.dart';
import 'prefs_detail_action.dart';
import 'prefs_detail_header.dart';
import 'prefs_detail_meta.dart';
import 'prefs_detail_name_field.dart';
import 'prefs_detail_title.dart';

class PrefsDetailScaffold extends StatelessWidget {
  const PrefsDetailScaffold({
    super.key,
    required this.pref,
    required this.nameController,
    required this.onDelete,
    required this.onSave,
    required this.onBack,
  });

  final PokemonPreference pref;
  final TextEditingController nameController;
  final VoidCallback onDelete;
  final VoidCallback onSave;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(PrefsDetailUtils.appBarHeight),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.secondaryContainer,
                  theme.colorScheme.secondary,
                ],
                begin: PrefsDetailUtils.gradientBegin,
                end: PrefsDetailUtils.gradientEnd,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(
                    alpha: PrefsDetailUtils.shadowOpacity,
                  ),
                  blurRadius: PrefsDetailUtils.shadowBlurRadius,
                  offset: Offset(0, PrefsDetailUtils.shadowOffsetY),
                ),
              ],
            ),
          ),
          titleSpacing: PrefsDetailUtils.titleSpacing,
          title: PrefsDetailTitle(pref: pref),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(PrefsDetailUtils.pagePadding),
          child: Column(
            children: [
              PrefsDetailHeader(pref: pref),
              Padding(
                padding: const EdgeInsets.only(
                  top: PrefsDetailUtils.headerBottomSpacing,
                  bottom: PrefsDetailUtils.metaTopSpacing,
                ),
                child: PrefsDetailNameField(controller: nameController),
              ),
              PrefsDetailMeta(pref: pref),
              const Spacer(),
              PrefsDetailActions(
                onBack: onBack,
                onDelete: onDelete,
                onSave: onSave,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
