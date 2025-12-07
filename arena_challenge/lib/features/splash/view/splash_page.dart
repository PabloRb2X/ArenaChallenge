import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/app_router.dart';
import '../cubit/cubit.dart';
import 'brand_splash_view.dart';
import 'welcome_user.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.maybeWhen(
            navigateToApiList: () {
              AppRouter.router.navigateTo(
                context,
                AppRouter.apiList,
                clearStack: true,
              );
            },
            orElse: () {},
          );
        },
        child: const _SplashContent(),
      ),
    );
  }
}

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [BrandSplashView(), SizedBox(height: 12), WelcomeUser()],
      ),
    );
  }
}
