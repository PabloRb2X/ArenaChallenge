import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/global_loading.dart';
import '../../../home/domain/entities/pokemon_preference.dart';
import '../cubit/cubit.dart';
import '../widget/detail_page/prefs_detail_scaffold.dart';
import '../../utils/preferences_utils.dart';

class PrefsDetailPage extends StatefulWidget {
  final String id;

  const PrefsDetailPage({super.key, required this.id});

  @override
  State<PrefsDetailPage> createState() => _PrefsDetailPageState();
}

class _PrefsDetailPageState extends State<PrefsDetailPage> {
  late final Future<PokemonPreference?> _prefFuture;
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final prefsCubit = context.read<PreferenceCubit>();
    _prefFuture = prefsCubit.getById(widget.id);
  }

  Future<void> _handleDelete(PokemonPreference pref) async {
    final prefsCubit = context.read<PreferenceCubit>();
    final navigator = Navigator.of(context);

    await prefsCubit.deletePreference(pref.id);
    navigator.pop();
  }

  Future<void> _handleSave(PokemonPreference pref) async {
    final prefsCubit = context.read<PreferenceCubit>();
    final navigator = Navigator.of(context);

    pref.customName = _nameController.text.trim();
    await prefsCubit.updatePreference(pref);
    navigator.pop();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PokemonPreference?>(
      future: _prefFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(body: GlobalLoading());
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: const Text(PrefsDetailUtils.titleFallback)),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Error to load favorite Pokémon.\n\n${snapshot.error}',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }

        final pref = snapshot.data;

        if (pref == null) {
          return Scaffold(
            appBar: AppBar(title: const Text(PrefsDetailUtils.titleFallback)),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        'Error to load favorite Pokémon.\n'
                        'Maybe it was deleted',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Back'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        if (_nameController.text.isEmpty) {
          _nameController.text = pref.customName;
        }

        return PrefsDetailScaffold(
          pref: pref,
          nameController: _nameController,
          onDelete: () => _handleDelete(pref),
          onSave: () => _handleSave(pref),
          onBack: () => Navigator.of(context).pop(),
        );
      },
    );
  }
}
