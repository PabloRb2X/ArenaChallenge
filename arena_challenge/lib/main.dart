// lib/main.dart
import 'package:arena_challenge/features/home/domain/entities/pokemon_preference.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/router/app_router.dart';
import 'features/home/domain/repositories/preferences_repository.dart';
import 'features/splash/cubit/cubit.dart';
import 'features/splash/utils/splash_utils.dart';

import 'features/home/data/datasources/pokemon_api_service.dart';
import 'features/home/data/repositories/pokemon_api_repository_impl.dart';
import 'features/home/domain/repositories/pokemon_repository.dart';
import 'features/home/domain/usecases/get_pokemon_detail_usecase.dart';
import 'features/home/domain/usecases/get_pokemon_list_usecase.dart';
import 'features/home/domain/usecases/search_pokemon_usecase.dart';
import 'features/home/presentation/cubit/cubit.dart';

import 'features/preferences/data/datasources/preferences_local_data_source.dart';
import 'features/preferences/data/repositories/preferences_repository_impl.dart';
import 'features/preferences/domain/usecases/add_preference_usecase.dart';
import 'features/preferences/domain/usecases/delete_preference_usecase.dart';
import 'features/preferences/domain/usecases/get_all_preferences_usecase.dart';
import 'features/preferences/domain/usecases/get_preference_by_id_usecase.dart';
import 'features/preferences/domain/usecases/update_preference_usecase.dart';
import 'features/preferences/presentation/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PokemonPreferenceAdapter());

  AppRouter.setupRouter();

  // DIO
  final dio = Dio();
  final pokemonApiService = PokemonApiService(dio);
  final PokemonRepository pokemonRepository = PokemonApiRepositoryImpl(
    pokemonApiService,
  );

  // POKEAPI Usecases
  final getPokemonListUseCase = GetPokemonListUseCase(pokemonRepository);
  final getPokemonDetailUseCase = GetPokemonDetailUseCase(pokemonRepository);
  final searchPokemonUseCase = SearchPokemonUseCase(pokemonRepository);

  final prefsLocalDataSource = PreferencesLocalDataSource();
  final PreferencesRepository preferencesRepository = PreferencesRepositoryImpl(
    prefsLocalDataSource,
  );

  final getAllPrefsUseCase = GetAllPreferencesUseCase(preferencesRepository);
  final getPrefByIdUseCase = GetPreferenceByIdUseCase(preferencesRepository);
  final addPrefUseCase = AddPreferenceUseCase(preferencesRepository);
  final updatePrefUseCase = UpdatePreferenceUseCase(preferencesRepository);
  final deletePrefUseCase = DeletePreferenceUseCase(preferencesRepository);

  runApp(
    MyApp(
      getPokemonListUseCase: getPokemonListUseCase,
      getPokemonDetailUseCase: getPokemonDetailUseCase,
      searchPokemonUseCase: searchPokemonUseCase,
      getAllPrefsUseCase: getAllPrefsUseCase,
      getPrefByIdUseCase: getPrefByIdUseCase,
      addPrefUseCase: addPrefUseCase,
      updatePrefUseCase: updatePrefUseCase,
      deletePrefUseCase: deletePrefUseCase,
    ),
  );
}

class MyApp extends StatelessWidget {
  final GetPokemonListUseCase getPokemonListUseCase;
  final GetPokemonDetailUseCase getPokemonDetailUseCase;
  final SearchPokemonUseCase searchPokemonUseCase;

  final GetAllPreferencesUseCase getAllPrefsUseCase;
  final GetPreferenceByIdUseCase getPrefByIdUseCase;
  final AddPreferenceUseCase addPrefUseCase;
  final UpdatePreferenceUseCase updatePrefUseCase;
  final DeletePreferenceUseCase deletePrefUseCase;

  const MyApp({
    super.key,
    required this.getPokemonListUseCase,
    required this.getPokemonDetailUseCase,
    required this.searchPokemonUseCase,
    required this.getAllPrefsUseCase,
    required this.getPrefByIdUseCase,
    required this.addPrefUseCase,
    required this.updatePrefUseCase,
    required this.deletePrefUseCase,
  });

  @override
  Widget build(BuildContext context) {
    final splashUtils = SplashUtils();

    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(create: (_) => SplashCubit(splashUtils)),
        BlocProvider<HomeApiCubit>(
          create: (_) => HomeApiCubit(
            getPokemonListUseCase: getPokemonListUseCase,
            getPokemonDetailUseCase: getPokemonDetailUseCase,
            searchPokemonUseCase: searchPokemonUseCase,
          )..loadPokemonList(),
        ),
        BlocProvider(create: (_) => HomeNavCubit()),
        BlocProvider<PreferenceCubit>(
          create: (_) => PreferenceCubit(
            getAllUseCase: getAllPrefsUseCase,
            getByIdUseCase: getPrefByIdUseCase,
            addUseCase: addPrefUseCase,
            updateUseCase: updatePrefUseCase,
            deleteUseCase: deletePrefUseCase,
          )..loadPreferences(),
        ),
        BlocProvider(create: (_) => PreferencesNavCubit()),
        BlocProvider(create: (_) => PrefsNewNavCubit()),
      ],
      child: MaterialApp(
        title: 'PokeApi',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.router.generator,
        initialRoute: AppRouter.splash,
      ),
    );
  }
}
