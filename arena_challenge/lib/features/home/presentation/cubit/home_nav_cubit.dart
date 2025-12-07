import 'package:flutter_bloc/flutter_bloc.dart';

enum HomeNavTarget { preferencesList, preferencesNew }

class HomeNavState {
  final HomeNavTarget? target;

  const HomeNavState._(this.target);

  const HomeNavState.idle() : this._(null);

  const HomeNavState.navigate(HomeNavTarget target) : this._(target);
}

class HomeNavCubit extends Cubit<HomeNavState> {
  HomeNavCubit() : super(const HomeNavState.idle());

  void goToPreferencesList() {
    emit(const HomeNavState.navigate(HomeNavTarget.preferencesList));
  }

  void goToPreferencesNew() {
    emit(const HomeNavState.navigate(HomeNavTarget.preferencesNew));
  }

  void reset() {
    emit(const HomeNavState.idle());
  }
}
