import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../home/domain/entities/pokemon_detail.dart';
import '../../../home/domain/entities/pokemon_preference.dart';
import '../../../home/domain/entities/pokemon_summary.dart';
import '../../../home/presentation/cubit/cubit.dart';
import '../../utils/preferences_utils.dart';
import '../cubit/cubit.dart';
import '../widget/new_page/action_section.dart';
import '../widget/new_page/custom_name_section.dart';
import '../widget/new_page/header_section.dart';
import '../widget/new_page/pokemon_selector_section.dart';
import '../widget/new_page/prefs_new_app_bar.dart';

class PrefsNewPage extends StatefulWidget {
  const PrefsNewPage({super.key});

  @override
  State<PrefsNewPage> createState() => _PrefsNewPageState();
}

class _PrefsNewPageState extends State<PrefsNewPage> {
  PokemonSummary? _selectedPokemon;
  final _customNameController = TextEditingController();

  @override
  void dispose() {
    _customNameController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    final apiCubit = context.read<HomeApiCubit>();
    final preferenceCubit = context.read<PreferenceCubit>();
    final navCubit = context.read<PrefsNewNavCubit>();

    if (_selectedPokemon == null || _customNameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(PrefsNewPageUtils.validationError)),
      );
      return;
    }

    final PokemonDetail detail = await apiCubit.loadDetail(
      _selectedPokemon!.name,
    );

    final pref = PokemonPreference(
      id: const Uuid().v4(),
      pokemonId: detail.id,
      pokemonName: detail.name,
      customName: _customNameController.text.trim(),
      spriteUrl: detail.sprites.frontDefault,
    );

    await preferenceCubit.addPreference(pref);

    if (!mounted) return;

    navCubit.navigateBack();
  }

  void _handleNavigation(BuildContext context, PrefsNewNavState state) {
    final target = state.target;
    if (target == null) return;

    switch (target) {
      case PrefsNewNavTarget.close:
        Navigator.of(context).pop();
        break;
    }

    context.read<PrefsNewNavCubit>().reset();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<PrefsNewNavCubit, PrefsNewNavState>(
      listener: _handleNavigation,
      child: Scaffold(
        appBar: const PrefsNewAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              const HeaderSection(),
              const SizedBox(height: PrefsNewPageUtils.headerBottomSpacing),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: PrefsNewPageUtils.pageHorizontalPadding,
                  ),
                  child: PokemonSelectorSection(
                    selected: _selectedPokemon,
                    onSelected: (p) => setState(() => _selectedPokemon = p),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PrefsNewPageUtils.pageHorizontalPadding,
                ),
                child: CustomNameSection(controller: _customNameController),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PrefsNewPageUtils.pageHorizontalPadding,
                  vertical: PrefsNewPageUtils.actionsVerticalPadding,
                ),
                child: ActionsSection(
                  theme: theme,
                  onCancel: () =>
                      context.read<PrefsNewNavCubit>().navigateBack(),
                  onSave: _onSave,
                ),
              ),
              const SizedBox(height: PrefsNewPageUtils.bottomSafeSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
