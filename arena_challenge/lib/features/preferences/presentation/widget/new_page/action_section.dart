import 'package:flutter/material.dart';

import '../../../utils/preferences_utils.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({
    super.key,
    required this.theme,
    required this.onCancel,
    required this.onSave,
  });

  final ThemeData theme;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onCancel,
            child: const Text(PrefsNewPageUtils.cancelText),
          ),
        ),
        const SizedBox(width: PrefsNewPageUtils.actionsButtonSpacing),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onSave,
            icon: const Icon(Icons.save_rounded),
            label: const Text(PrefsNewPageUtils.saveText),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
