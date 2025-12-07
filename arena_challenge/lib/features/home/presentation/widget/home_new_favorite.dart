import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/home_utils.dart';
import '../cubit/cubit.dart';

class HomeNewFavorite extends StatelessWidget {
  const HomeNewFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => context.read<HomeNavCubit>().goToPreferencesNew(),
      label: const Text(HomeUtils.newFavorite),
      icon: const Icon(Icons.add),
    );
  }
}
