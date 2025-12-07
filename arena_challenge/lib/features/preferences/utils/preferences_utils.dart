// lib/features/preferences/utils/preferences_utils.dart
import 'package:flutter/material.dart';

class PreferencesListUtils {
  // Mensajes
  static const String emptyTitle = 'Empty favorites';
  static const String emptySubtitle =
      'Explore the Pokédex and add your favorites.';
  static const String deleteTooltip = 'Delete favorite';

  // Empty View
  static const double emptyIconSize = 64;
  static const double emptyTitleSpacing = 12;
  static const double emptySubtitleSpacing = 4;
  static const double emptyIconOpacity = 0.6;

  // List padding
  static const EdgeInsets listPadding = EdgeInsets.symmetric(vertical: 8);

  // Card padding
  static const EdgeInsets cardOuterPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 6,
  );
  static const EdgeInsets cardInnerPadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 10,
  );

  static const double cardElevation = 4;
  static const BorderRadius cardRadius = BorderRadius.all(Radius.circular(16));

  // Avatar
  static const double avatarRadius = 28;
  static const double avatarPadding = 6;
  static const double avatarFallbackIconSize = 28;
  static Color get avatarBackground => Colors.red.shade50;

  // Text spacing
  static const double titleBottomSpacing = 4;

  // Tag icon
  static const double tagIconSize = 16;
  static const double tagSpacing = 4;

  // Delete button
  static const double deleteIconOpacity = 0.9;

  // Navigation path
  static String prefsDetailPath(String id) => '/prefs/$id';
}

class PrefsListUtils {
  static const double appBarHeight = 75;
  static const double titleSpacing = 16;

  static const Alignment gradientBegin = Alignment.topLeft;
  static const Alignment gradientEnd = Alignment.bottomRight;

  static const double shadowOpacity = 0.18;
  static const double shadowBlurRadius = 10;
  static const double shadowOffsetY = 4;

  static const double iconSize = 40;
  static const double iconInternalSize = 24;
  static const double iconBorderWidth = 1.2;
  static const double iconBgOpacity = 0.15;
  static const double iconBorderOpacity = 0.6;

  static const String title = "My favorites";
  static const String subtitle = "Your Pokémon favorite list";
  static const double subtitleOpacity = 0.85;

  static const double hintPaddingHorizontal = 16;
  static const double hintPaddingTop = 12;
  static const double hintPaddingBottom = 4;
  static const double hintContainerRadius = 12;

  static const String fabLabel = "New favorite";
  static const String fabRecomendation =
      'Toca un gusto para ver el detalle o usa el ícono de la papelera para eliminarlo.';

  static const double listTopSpacing = 4;
}

class PrefsNewPageUtils {
  static const double appBarHeight = 75;
  static const double titleSpacing = 16;

  static const Alignment gradientBegin = Alignment.topLeft;
  static const Alignment gradientEnd = Alignment.bottomRight;

  static const double shadowOpacity = 0.18;
  static const double shadowBlurRadius = 10;
  static const double shadowOffsetY = 4;

  static const double iconSize = 42;
  static const double iconInternalSize = 24;
  static const double iconBorderWidth = 1.2;
  static const double iconBgOpacity = 0.18;
  static const double iconBorderOpacity = 0.6;

  static const bool showSubtitle = true;
  static const String appBarSubtitle = 'Crea tu nuevo gusto';
  static const double subtitleOpacity = 0.85;

  static const String appBarTitle = 'New favorite';
  static const String headerTitle = 'Create a new favorite';
  static const String headerSubtitle =
      'Choose a Pokémon to the list and set a custom name';
  static const String selectorTitle = 'Choose a Pokémon';
  static const String emptyPokemonList = 'There is not an available Pokémon';
  static const String customNameLabel = 'Custom name';
  static const String customNameHint = 'Ej. Sparky, Miau, anything';
  static const String cancelText = 'Cancel';
  static const String saveText = 'Save';
  static const String validationError =
      'Select a Pokémon and set a custom name';

  static const double pageHorizontalPadding = 16;
  static const double pageTopSpacing = 8;
  static const double headerBottomSpacing = 8;
  static const double sectionSpacing = 12;
  static const double selectorTitleBottomSpacing = 4;
  static const double textFieldBottomSpacing = 8;
  static const double actionsVerticalPadding = 12;
  static const double actionsButtonSpacing = 12;
  static const double bottomSafeSpacing = 16;

  static const double selectorItemBorderRadius = 12;
  static const double selectorItemVerticalPadding = 10;
  static const double selectorItemHorizontalPadding = 12;
  static const double selectorAvatarSize = 32;
  static const double selectorAvatarRadius = 999;
  static const double selectorAvatarTextSize = 14;

  static const double selectorSelectedOpacity = 0.12;
  static const double selectorBorderOpacity = 0.35;
  static const double selectorUnselectedBorderOpacity = 0.08;

  // Layout
  static const sectionPadding = EdgeInsets.symmetric(vertical: 12);

  static const cardPadding = EdgeInsets.symmetric(horizontal: 14, vertical: 12);
  static const double cardBorderRadius = 16.0;
  static const labelPadding = EdgeInsets.only(bottom: 6);
  static const double textFieldBorderRadius = 14.0;
  static const textFieldInnerPadding = EdgeInsets.symmetric(
    vertical: 14,
    horizontal: 16,
  );
}

class PrefsDetailUtils {
  // AppBar
  static const double appBarHeight = 75;
  static const double titleSpacing = 16;
  static const double shadowOpacity = 0.18;
  static const double shadowBlurRadius = 10;
  static const double shadowOffsetY = 4;

  static const double iconSize = 40;
  static const double iconInternalSize = 22;
  static const double iconBorderWidth = 1.2;
  static const double iconBgOpacity = 0.15;
  static const double iconBorderOpacity = 0.6;

  static const String titleFallback = 'Detail';

  static const Alignment gradientBegin = Alignment.topLeft;
  static const Alignment gradientEnd = Alignment.bottomRight;

  // Layout general
  static const double pagePadding = 16;
  static const double headerBottomSpacing = 20;
  static const double metaTopSpacing = 8;
  static const double actionsSpacing = 12;

  // Header card
  static const double headerCardElevation = 3;
  static const double headerRadius = 16;
  static const double headerCardPadding = 12;
  static const double headerTextSpacing = 12;

  // Avatar
  static const double avatarSize = 156;
  static const double avatarIconSize = 32;
  static const double avatarPadding = 6;

  // Textos
  static const String nameLabel = 'Custom name';
  static const String nameHint = 'Type the pokemon name';
  static const String originalPokemonPrefix = 'Original Pokémon name: ';

  static const String backLabel = 'Back';
  static const String deleteLabel = 'Delete';
  static const String saveLabel = 'Save';
}
