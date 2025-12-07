// lib/features/home/widget/pokemon_avatar.dart
import 'package:flutter/material.dart';

import '../../domain/entities/pokemon_detail.dart';
import '../../utils/home_utils.dart';

class PokemonAvatar extends StatelessWidget {
  final AsyncSnapshot<PokemonDetail> snapshot;

  const PokemonAvatar({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (snapshot.connectionState == ConnectionState.waiting) {
      child = const Center(
        child: CircularProgressIndicator(
          strokeWidth: HomePokemonListUtils.loadingStrokeWidth,
        ),
      );
    } else if (snapshot.hasData &&
        snapshot.data!.sprites.frontDefault != null) {
      child = Image.network(
        snapshot.data!.sprites.frontDefault!,
        fit: BoxFit.contain,
      );
    } else {
      child = const Icon(
        Icons.catching_pokemon,
        size: HomePokemonListUtils.fallbackIconSize,
      );
    }

    return Container(
      width: HomePokemonListUtils.avatarRadius * 2,
      height: HomePokemonListUtils.avatarRadius * 2,
      decoration: BoxDecoration(
        color: HomePokemonListUtils.avatarBackgroundColor,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(
            HomePokemonListUtils.avatarInnerPadding,
          ),
          child: child,
        ),
      ),
    );
  }
}
