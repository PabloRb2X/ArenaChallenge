// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeApiState {
  List<PokemonSummary> get list => throw _privateConstructorUsedError;
  bool get searchMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        initial,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        loading,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        success,
    required TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult? Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeApiStateCopyWith<HomeApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeApiStateCopyWith<$Res> {
  factory $HomeApiStateCopyWith(
          HomeApiState value, $Res Function(HomeApiState) then) =
      _$HomeApiStateCopyWithImpl<$Res, HomeApiState>;
  @useResult
  $Res call({List<PokemonSummary> list, bool searchMode});
}

/// @nodoc
class _$HomeApiStateCopyWithImpl<$Res, $Val extends HomeApiState>
    implements $HomeApiStateCopyWith<$Res> {
  _$HomeApiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchMode = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
      searchMode: null == searchMode
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeApiStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonSummary> list, bool searchMode});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeApiStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchMode = null,
  }) {
    return _then(_$InitialImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
      searchMode: null == searchMode
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<PokemonSummary> list = const [], this.searchMode = false})
      : _list = list;

  final List<PokemonSummary> _list;
  @override
  @JsonKey()
  List<PokemonSummary> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final bool searchMode;

  @override
  String toString() {
    return 'HomeApiState.initial(list: $list, searchMode: $searchMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.searchMode, searchMode) ||
                other.searchMode == searchMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), searchMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        initial,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        loading,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        success,
    required TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)
        error,
  }) {
    return initial(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult? Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
  }) {
    return initial?.call(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(list, searchMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeApiState {
  const factory _Initial(
      {final List<PokemonSummary> list, final bool searchMode}) = _$InitialImpl;

  @override
  List<PokemonSummary> get list;
  @override
  bool get searchMode;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $HomeApiStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonSummary> list, bool searchMode});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeApiStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchMode = null,
  }) {
    return _then(_$LoadingImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
      searchMode: null == searchMode
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<PokemonSummary> list = const [], this.searchMode = false})
      : _list = list;

  final List<PokemonSummary> _list;
  @override
  @JsonKey()
  List<PokemonSummary> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final bool searchMode;

  @override
  String toString() {
    return 'HomeApiState.loading(list: $list, searchMode: $searchMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.searchMode, searchMode) ||
                other.searchMode == searchMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), searchMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        initial,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        loading,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        success,
    required TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)
        error,
  }) {
    return loading(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult? Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
  }) {
    return loading?.call(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(list, searchMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeApiState {
  const factory _Loading(
      {final List<PokemonSummary> list, final bool searchMode}) = _$LoadingImpl;

  @override
  List<PokemonSummary> get list;
  @override
  bool get searchMode;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $HomeApiStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonSummary> list, bool searchMode});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$HomeApiStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? searchMode = null,
  }) {
    return _then(_$SuccessImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
      searchMode: null == searchMode
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<PokemonSummary> list, this.searchMode = false})
      : _list = list;

  final List<PokemonSummary> _list;
  @override
  List<PokemonSummary> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final bool searchMode;

  @override
  String toString() {
    return 'HomeApiState.success(list: $list, searchMode: $searchMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.searchMode, searchMode) ||
                other.searchMode == searchMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), searchMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        initial,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        loading,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        success,
    required TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)
        error,
  }) {
    return success(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult? Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
  }) {
    return success?.call(list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list, searchMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements HomeApiState {
  const factory _Success(
      {required final List<PokemonSummary> list,
      final bool searchMode}) = _$SuccessImpl;

  @override
  List<PokemonSummary> get list;
  @override
  bool get searchMode;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $HomeApiStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<PokemonSummary> list, bool searchMode});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeApiStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? list = null,
    Object? searchMode = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
      searchMode: null == searchMode
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {required this.message,
      final List<PokemonSummary> list = const [],
      this.searchMode = false})
      : _list = list;

  @override
  final String message;
  final List<PokemonSummary> _list;
  @override
  @JsonKey()
  List<PokemonSummary> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final bool searchMode;

  @override
  String toString() {
    return 'HomeApiState.error(message: $message, list: $list, searchMode: $searchMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.searchMode, searchMode) ||
                other.searchMode == searchMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_list), searchMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        initial,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        loading,
    required TResult Function(List<PokemonSummary> list, bool searchMode)
        success,
    required TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)
        error,
  }) {
    return error(message, list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult? Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult? Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
  }) {
    return error?.call(message, list, searchMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonSummary> list, bool searchMode)? initial,
    TResult Function(List<PokemonSummary> list, bool searchMode)? loading,
    TResult Function(List<PokemonSummary> list, bool searchMode)? success,
    TResult Function(
            String message, List<PokemonSummary> list, bool searchMode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, list, searchMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeApiState {
  const factory _Error(
      {required final String message,
      final List<PokemonSummary> list,
      final bool searchMode}) = _$ErrorImpl;

  String get message;
  @override
  List<PokemonSummary> get list;
  @override
  bool get searchMode;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
