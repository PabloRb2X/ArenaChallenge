import 'package:flutter/material.dart';

import '../../../../../core/theme/app_typography.dart';
import '../../../utils/preferences_utils.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        PrefsNewPageUtils.pageHorizontalPadding,
        PrefsNewPageUtils.pageTopSpacing,
        PrefsNewPageUtils.pageHorizontalPadding,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              PrefsNewPageUtils.headerTitle,
              style: AppTypography.titleLarge,
            ),
          ),
          Text(
            PrefsNewPageUtils.headerSubtitle,
            style: AppTypography.bodySmall.copyWith(
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
