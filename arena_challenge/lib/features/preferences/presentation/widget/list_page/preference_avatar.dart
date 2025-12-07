import 'package:flutter/material.dart';

import '../../../utils/preferences_utils.dart';

class PreferenceAvatar extends StatelessWidget {
  const PreferenceAvatar({super.key, required this.spriteUrl});

  final String? spriteUrl;

  @override
  Widget build(BuildContext context) {
    final radius = PreferencesListUtils.avatarRadius;

    Widget child;
    final soundestSpriteUrl = spriteUrl;

    if (soundestSpriteUrl != null && soundestSpriteUrl.isNotEmpty) {
      child = Image.network(soundestSpriteUrl, fit: BoxFit.contain);
    } else {
      child = const Icon(
        Icons.catching_pokemon,
        size: PreferencesListUtils.avatarFallbackIconSize,
      );
    }

    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: PreferencesListUtils.avatarBackground,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(PreferencesListUtils.avatarPadding),
          child: child,
        ),
      ),
    );
  }
}
