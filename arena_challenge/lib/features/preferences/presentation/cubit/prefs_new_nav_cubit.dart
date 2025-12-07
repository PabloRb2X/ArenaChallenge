import 'package:flutter_bloc/flutter_bloc.dart';

enum PrefsNewNavTarget { close }

class PrefsNewNavState {
  final PrefsNewNavTarget? target;

  const PrefsNewNavState._({this.target});

  const PrefsNewNavState.idle() : this._();

  const PrefsNewNavState.close() : this._(target: PrefsNewNavTarget.close);
}

class PrefsNewNavCubit extends Cubit<PrefsNewNavState> {
  PrefsNewNavCubit() : super(const PrefsNewNavState.idle());

  void navigateBack() => emit(const PrefsNewNavState.close());

  void reset() => emit(const PrefsNewNavState.idle());
}
