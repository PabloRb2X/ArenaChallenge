import 'package:flutter/material.dart';

abstract class HomeUtils {
  static const title = 'Welcome to PokeApi';
  static const searchPokemonByName = 'Search Pokémon by name';
  static const newFavorite = 'New favorite';
  static const minSearchCharacter = 2;
  static const noPokemon = 'There isn\'t pokemon to show';
  static const id = 'Id:';
  static const height = 'Height:';
  static const weight = 'Weight:';
  static const baseExperience = 'Base experience:';
  static const loadingTypes = 'Loading types';
  static const noTypes = 'No types';
  static const tapForDetails = 'Tap for details';
}

abstract class HomeAppBarUtils {
  static const String title = 'Pokedex';
  static const String subtitle = 'Search and save your favorite Pokémon';
  static const String tooltipFavorites = 'Favorites';

  static const double appBarHeight = 75;
  static const double avatarSize = 44;
  static const double avatarBorderWidth = 1.2;
  static const double avatarIconSize = 26;

  static const double titleSpacing = 16;
  static const double betweenAvatarAndText = 12;
  static const double subtitleTopPadding = 2;
  static const double actionsRightSpacing = 8;

  static const double avatarBackgroundOpacity = 0.15;
  static const double avatarBorderOpacity = 0.6;
  static const double subtitleOpacity = 0.85;

  static const double shadowBlurRadius = 10;
  static const double shadowOffsetY = 4;
  static const double shadowOpacity = 0.18;

  static final BorderRadius circularAvatar = BorderRadius.circular(999);

  static const EdgeInsets titlePadding = EdgeInsets.only(left: 12);
  static const EdgeInsets subtitlePadding = EdgeInsets.only(top: 2);

  static const Alignment gradientBegin = Alignment.topLeft;
  static const Alignment gradientEnd = Alignment.bottomRight;
}

class HomePokemonListUtils {
  static const double scrollThreshold = 200.0;

  static const EdgeInsets listPadding = EdgeInsets.symmetric(vertical: 8);

  static const EdgeInsets cardOuterPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 6,
  );
  static const double cardElevation = 4;
  static const BorderRadius cardBorderRadius = BorderRadius.all(
    Radius.circular(16),
  );

  static const EdgeInsets cardInnerPadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 10,
  );
  static const double cardAvatarTextSpacing = 12;
  static const double cardNameTypesSpacing = 6;

  static const double avatarRadius = 32.0;
  static const double avatarInnerPadding = 6.0;
  static const double loadingStrokeWidth = 2.0;
  static const double fallbackIconSize = 32.0;

  static Color get avatarBackgroundColor => Colors.red.shade50;

  static const double typeChipHorizontalPadding = 10;
  static const double typeChipVerticalPadding = 4;
  static const double typeChipBorderRadius = 999;
  static const double typeChipBorderWidth = 1;
  static const double typeChipBackgroundOpacity = 0.15;
  static const double typeChipBorderOpacity = 0.8;

  static const double detailSheetPadding = 16.0;
  static const double handleWidth = 40;
  static const double handleHeight = 4;
  static const double handleBottomMargin = 12;
  static const double handleBorderRadius = 999;

  static Color get handleColor => Colors.grey.shade400;

  static const double titleTopSpacing = 12;
  static const double imageHeight = 120;
  static const double sectionSpacing = 16;
  static const double infoRowSpacing = 16;

  static const double infoBadgeHorizontalPadding = 12;
  static const double infoBadgeVerticalPadding = 8;
  static const double infoBadgeBorderRadius = 12;
  static const double infoBadgeLabelSpacing = 4;

  static Color get infoBadgeBackground => Colors.grey.shade100;
  static Color get infoBadgeLabelColor => Colors.grey.shade600;

  static Color typeColor(String type) {
    switch (type.toLowerCase()) {
      case 'fire':
        return Colors.redAccent;
      case 'water':
        return Colors.blueAccent;
      case 'grass':
        return Colors.green;
      case 'electric':
        return Colors.amber;
      case 'psychic':
        return Colors.pinkAccent;
      case 'ice':
        return Colors.cyan;
      case 'fighting':
        return Colors.brown;
      case 'poison':
        return Colors.purple;
      case 'ground':
        return Colors.brown;
      case 'flying':
        return Colors.indigo;
      case 'bug':
        return Colors.lightGreen;
      case 'rock':
        return Colors.grey;
      case 'ghost':
        return Colors.deepPurple;
      case 'dragon':
        return Colors.indigoAccent;
      case 'dark':
        return Colors.blueGrey;
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pink;
      default:
        return Colors.blueGrey;
    }
  }

  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
