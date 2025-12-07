import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/global_loading.dart';
import '../../../home/domain/entities/pokemon_preference.dart';
import '../cubit/cubit.dart';

class PrefsDetailPage extends StatefulWidget {
  final String id;

  const PrefsDetailPage({super.key, required this.id});

  @override
  State<PrefsDetailPage> createState() => _PrefsDetailPageState();
}

class _PrefsDetailPageState extends State<PrefsDetailPage> {
  PokemonPreference? pref;

  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadPref();
  }

  Future<void> _loadPref() async {
    final cubit = context.read<PreferenceCubit>();
    final result = await cubit.getById(widget.id);
    setState(() {
      pref = result;
      if (pref != null) {
        _nameController.text = pref!.customName;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (pref == null) {
      return const Scaffold(body: GlobalLoading());
    }

    final cubit = context.read<PreferenceCubit>();

    return Scaffold(
      appBar: AppBar(title: Text(pref!.customName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (pref!.spriteUrl != null)
              Image.network(pref!.spriteUrl!, height: 120),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nombre personalizado',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text('Pokémon original: ${pref!.pokemonName}'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Volver'),
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.delete),
                  label: const Text('Eliminar'),
                  onPressed: () async {
                    await cubit.deletePreference(pref!.id);
                    if (mounted) Navigator.of(context).pop();
                  },
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.save),
                  label: const Text('Guardar'),
                  onPressed: () async {
                    pref!.customName = _nameController.text.trim();
                    await cubit.updatePreference(pref!);
                    if (mounted) Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
