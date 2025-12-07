import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/theme/app_typography.dart';
import '../../../utils/preferences_utils.dart';

class PrefsNewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrefsNewAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(PrefsNewPageUtils.appBarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(color: Colors.white),

      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primaryContainer,
              theme.colorScheme.primary,
            ],
            begin: PrefsNewPageUtils.gradientBegin,
            end: PrefsNewPageUtils.gradientEnd,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: PrefsNewPageUtils.shadowOpacity,
              ),
              blurRadius: PrefsNewPageUtils.shadowBlurRadius,
              offset: Offset(0, PrefsNewPageUtils.shadowOffsetY),
            ),
          ],
        ),
      ),
      titleSpacing: PrefsNewPageUtils.titleSpacing,
      title: Row(
        children: [
          // 🔹 Icon-container
          Container(
            width: PrefsNewPageUtils.iconSize,
            height: PrefsNewPageUtils.iconSize,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: PrefsNewPageUtils.iconBgOpacity,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withValues(
                  alpha: PrefsNewPageUtils.iconBorderOpacity,
                ),
                width: PrefsNewPageUtils.iconBorderWidth,
              ),
            ),
            child: const Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: PrefsNewPageUtils.iconInternalSize,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  PrefsNewPageUtils.appBarTitle,
                  style: AppTypography.titleMedium.copyWith(
                    color: Colors.white,
                  ),
                ),
                if (PrefsNewPageUtils.showSubtitle)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      PrefsNewPageUtils.appBarSubtitle,
                      style: AppTypography.bodySmall.copyWith(
                        color: Colors.white.withValues(
                          alpha: PrefsNewPageUtils.subtitleOpacity,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
