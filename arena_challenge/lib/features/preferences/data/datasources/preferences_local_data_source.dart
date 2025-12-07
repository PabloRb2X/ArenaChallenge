import 'package:arena_challenge/features/home/domain/entities/pokemon_preference.dart';
import 'package:hive/hive.dart';

class PreferencesLocalDataSource {
  static const String boxName = 'pokemon_prefs';

  Future<Box<PokemonPreference>> _openBox() async {
    return Hive.openBox<PokemonPreference>(boxName);
  }

  Future<List<PokemonPreference>> getAll() async {
    final box = await _openBox();
    return box.values.toList();
  }

  Future<PokemonPreference?> getById(String id) async {
    final box = await _openBox();
    return box.get(id);
  }

  Future<void> add(PokemonPreference pref) async {
    final box = await _openBox();
    await box.put(pref.id, pref);
  }

  Future<void> update(PokemonPreference pref) async {
    final box = await _openBox();
    await box.put(pref.id, pref);
  }

  Future<void> delete(String id) async {
    final box = await _openBox();
    await box.delete(id);
  }
}
