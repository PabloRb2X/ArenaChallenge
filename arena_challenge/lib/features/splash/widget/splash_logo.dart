import 'package:flutter/material.dart';

import '../utils/splash_utils.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo(size: SplashUtils.logoSize);
  }
}
