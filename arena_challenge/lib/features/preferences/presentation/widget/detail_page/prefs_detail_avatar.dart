import 'package:flutter/material.dart';

import '../../../utils/preferences_utils.dart';

class PrefsDetailAvatar extends StatelessWidget {
  const PrefsDetailAvatar({super.key, this.spriteUrl});

  final String? spriteUrl;

  @override
  Widget build(BuildContext context) {
    final size = PrefsDetailUtils.avatarSize;

    Widget child;
    if (spriteUrl != null && spriteUrl!.isNotEmpty) {
      child = Image.network(spriteUrl!, fit: BoxFit.contain);
    } else {
      child = const Icon(
        Icons.catching_pokemon,
        size: PrefsDetailUtils.avatarIconSize,
      );
    }

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(PrefsDetailUtils.avatarPadding),
          child: child,
        ),
      ),
    );
  }
}
