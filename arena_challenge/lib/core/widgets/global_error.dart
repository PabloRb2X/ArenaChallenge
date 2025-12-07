import 'package:flutter/material.dart';

import 'Utils/global_error_utils.dart';

class GlobalError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const GlobalError({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: GlobalErrorUtils.globalPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${GlobalErrorUtils.error}\n$message',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: GlobalErrorUtils.globalTopPadding,
              child: ElevatedButton(
                onPressed: onRetry,
                child: const Text(GlobalErrorUtils.retry),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
