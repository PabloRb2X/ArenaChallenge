import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_typography.dart';
import '../../utils/home_utils.dart';
import '../cubit/cubit.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final apiCubit = context.read<HomeApiCubit>();
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: TextField(
        onChanged: (value) {
          if (value.isEmpty || value.length >= HomeUtils.minSearchCharacter) {
            apiCubit.searchPokemon(value);
          }
        },
        decoration: InputDecoration(
          hintText: HomeUtils.searchPokemonByName,
          hintStyle: AppTypography.bodySmall.copyWith(fontSize: 14),
          filled: true,
          fillColor: Colors.grey.shade100,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(Icons.search, size: 22),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: theme.colorScheme.primary.withValues(alpha: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
