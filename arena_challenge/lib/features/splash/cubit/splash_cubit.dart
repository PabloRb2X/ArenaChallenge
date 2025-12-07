import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_state.dart';
import '../utils/splash_utils.dart';

class SplashCubit extends Cubit<SplashState> {
  final SplashUtils utils;

  SplashCubit(this.utils) : super(const SplashState.initial());

  Future<void> start() async {
    emit(const SplashState.loading());

    await utils.waitSplash();

    emit(const SplashState.navigateToApiList());
  }
}
