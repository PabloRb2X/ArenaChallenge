// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSummary _$PokemonSummaryFromJson(Map<String, dynamic> json) {
  return _PokemonSummary.fromJson(json);
}

/// @nodoc
mixin _$PokemonSummary {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSummaryCopyWith<PokemonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSummaryCopyWith<$Res> {
  factory $PokemonSummaryCopyWith(
          PokemonSummary value, $Res Function(PokemonSummary) then) =
      _$PokemonSummaryCopyWithImpl<$Res, PokemonSummary>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonSummaryCopyWithImpl<$Res, $Val extends PokemonSummary>
    implements $PokemonSummaryCopyWith<$Res> {
  _$PokemonSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSummaryImplCopyWith<$Res>
    implements $PokemonSummaryCopyWith<$Res> {
  factory _$$PokemonSummaryImplCopyWith(_$PokemonSummaryImpl value,
          $Res Function(_$PokemonSummaryImpl) then) =
      __$$PokemonSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonSummaryImplCopyWithImpl<$Res>
    extends _$PokemonSummaryCopyWithImpl<$Res, _$PokemonSummaryImpl>
    implements _$$PokemonSummaryImplCopyWith<$Res> {
  __$$PokemonSummaryImplCopyWithImpl(
      _$PokemonSummaryImpl _value, $Res Function(_$PokemonSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonSummaryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSummaryImpl implements _PokemonSummary {
  const _$PokemonSummaryImpl({required this.name, required this.url});

  factory _$PokemonSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSummaryImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonSummary(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSummaryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSummaryImplCopyWith<_$PokemonSummaryImpl> get copyWith =>
      __$$PokemonSummaryImplCopyWithImpl<_$PokemonSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSummaryImplToJson(
      this,
    );
  }
}

abstract class _PokemonSummary implements PokemonSummary {
  const factory _PokemonSummary(
      {required final String name,
      required final String url}) = _$PokemonSummaryImpl;

  factory _PokemonSummary.fromJson(Map<String, dynamic> json) =
      _$PokemonSummaryImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSummaryImplCopyWith<_$PokemonSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) {
  return _PokemonListResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonListResponse {
  int get count => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonSummary> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResponseCopyWith<PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseCopyWith<$Res> {
  factory $PokemonListResponseCopyWith(
          PokemonListResponse value, $Res Function(PokemonListResponse) then) =
      _$PokemonListResponseCopyWithImpl<$Res, PokemonListResponse>;
  @useResult
  $Res call(
      {int count, String next, String? previous, List<PokemonSummary> results});
}

/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res, $Val extends PokemonListResponse>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListResponseImplCopyWith<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  factory _$$PokemonListResponseImplCopyWith(_$PokemonListResponseImpl value,
          $Res Function(_$PokemonListResponseImpl) then) =
      __$$PokemonListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String next, String? previous, List<PokemonSummary> results});
}

/// @nodoc
class __$$PokemonListResponseImplCopyWithImpl<$Res>
    extends _$PokemonListResponseCopyWithImpl<$Res, _$PokemonListResponseImpl>
    implements _$$PokemonListResponseImplCopyWith<$Res> {
  __$$PokemonListResponseImplCopyWithImpl(_$PokemonListResponseImpl _value,
      $Res Function(_$PokemonListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonListResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonSummary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListResponseImpl implements _PokemonListResponse {
  const _$PokemonListResponseImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<PokemonSummary> results})
      : _results = results;

  factory _$PokemonListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final String? previous;
  final List<PokemonSummary> _results;
  @override
  List<PokemonSummary> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      __$$PokemonListResponseImplCopyWithImpl<_$PokemonListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonListResponse implements PokemonListResponse {
  const factory _PokemonListResponse(
      {required final int count,
      required final String next,
      required final String? previous,
      required final List<PokemonSummary> results}) = _$PokemonListResponseImpl;

  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonListResponseImpl.fromJson;

  @override
  int get count;
  @override
  String get next;
  @override
  String? get previous;
  @override
  List<PokemonSummary> get results;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
