import 'package:flutter/material.dart';
import '../../../../../core/theme/app_typography.dart';
import '../../../utils/preferences_utils.dart';

class CustomNameSection extends StatelessWidget {
  final TextEditingController controller;

  const CustomNameSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: PrefsNewPageUtils.sectionPadding,
      child: Container(
        padding: PrefsNewPageUtils.cardPadding,
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.35,
          ),
          borderRadius: BorderRadius.circular(
            PrefsNewPageUtils.cardBorderRadius,
          ),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.4),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Label superior
            Padding(
              padding: PrefsNewPageUtils.labelPadding,
              child: Text(
                PrefsNewPageUtils.customNameLabel,
                style: AppTypography.bodyMedium.copyWith(
                  color: theme.colorScheme.primary.withValues(alpha: 0.9),
                ),
              ),
            ),

            TextField(
              controller: controller,
              cursorColor: theme.colorScheme.primary,
              decoration: InputDecoration(
                hintText: PrefsNewPageUtils.customNameHint,
                hintStyle: AppTypography.bodySmall.copyWith(
                  color: Colors.grey.shade600,
                ),
                prefixIcon: Icon(
                  Icons.edit_note_rounded,
                  color: theme.colorScheme.primary.withValues(alpha: 0.9),
                ),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.85),
                contentPadding: PrefsNewPageUtils.textFieldInnerPadding,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    PrefsNewPageUtils.textFieldBorderRadius,
                  ),
                  borderSide: BorderSide(
                    color: theme.colorScheme.outlineVariant.withValues(
                      alpha: 0.4,
                    ),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    PrefsNewPageUtils.textFieldBorderRadius,
                  ),
                  borderSide: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
