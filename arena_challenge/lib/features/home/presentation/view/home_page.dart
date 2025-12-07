import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/app_router.dart';
import '../cubit/cubit.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_body.dart';
import '../widget/home_new_favorite.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeNavListener(child: _HomeScaffold());
  }
}

class _HomeNavListener extends StatelessWidget {
  final Widget child;

  const _HomeNavListener({required this.child});

  void _handleNavigation(BuildContext context, HomeNavState state) {
    final target = state.target;
    if (target == null) return;

    switch (target) {
      case HomeNavTarget.preferencesList:
        AppRouter.router.navigateTo(context, AppRouter.prefsList);
        break;
      case HomeNavTarget.preferencesNew:
        AppRouter.router.navigateTo(context, AppRouter.prefsNew);
        break;
    }

    context.read<HomeNavCubit>().reset();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeNavCubit, HomeNavState>(
      listener: _handleNavigation,
      child: child,
    );
  }
}

class _HomeScaffold extends StatelessWidget {
  const _HomeScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
      floatingActionButton: HomeNewFavorite(),
    );
  }
}
