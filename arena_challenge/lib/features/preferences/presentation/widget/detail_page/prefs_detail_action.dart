import 'package:flutter/material.dart';
import '../../../utils/preferences_utils.dart';

class PrefsDetailActions extends StatelessWidget {
  const PrefsDetailActions({
    super.key,
    required this.onBack,
    required this.onDelete,
    required this.onSave,
  });

  final VoidCallback onBack;
  final VoidCallback onDelete;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: OutlinedButton(
            onPressed: onBack,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text(PrefsDetailUtils.backLabel),
          ),
        ),
        const SizedBox(width: PrefsDetailUtils.actionsSpacing),
        Expanded(
          flex: 1,
          child: OutlinedButton(
            onPressed: onDelete,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
              side: BorderSide(color: theme.colorScheme.error),
              minimumSize: const Size(0, 48),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.delete, color: theme.colorScheme.error, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    PrefsDetailUtils.deleteLabel,
                    softWrap: false,
                    overflow: TextOverflow.visible,
                    style: TextStyle(color: theme.colorScheme.error),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: PrefsDetailUtils.actionsSpacing),
        Expanded(
          flex: 2,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text(PrefsDetailUtils.saveLabel),
            onPressed: onSave,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ),
      ],
    );
  }
}
