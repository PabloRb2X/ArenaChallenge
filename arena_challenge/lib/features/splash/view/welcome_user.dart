import 'package:flutter/material.dart';

import '../../../core/theme/app_typography.dart';
import '../utils/utils.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      SplashUtils.welcomeMessage,
      style: AppTypography.titleLarge,
    );
  }
}
