import 'package:flutter/material.dart';
import '../widget/splash_logo.dart';

class BrandSplashView extends StatelessWidget {
  const BrandSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: SplashLogo());
  }
}
