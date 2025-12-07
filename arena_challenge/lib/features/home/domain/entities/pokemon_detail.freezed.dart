// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) {
  return _PokemonDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  List<PokemonTypeSlot> get types => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailCopyWith<PokemonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailCopyWith<$Res> {
  factory $PokemonDetailCopyWith(
          PokemonDetail value, $Res Function(PokemonDetail) then) =
      _$PokemonDetailCopyWithImpl<$Res, PokemonDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'base_experience') int baseExperience,
      List<PokemonTypeSlot> types,
      Sprites sprites});

  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailCopyWithImpl<$Res, $Val extends PokemonDetail>
    implements $PokemonDetailCopyWith<$Res> {
  _$PokemonDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailImplCopyWith<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  factory _$$PokemonDetailImplCopyWith(
          _$PokemonDetailImpl value, $Res Function(_$PokemonDetailImpl) then) =
      __$$PokemonDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'base_experience') int baseExperience,
      List<PokemonTypeSlot> types,
      Sprites sprites});

  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDetailImplCopyWithImpl<$Res>
    extends _$PokemonDetailCopyWithImpl<$Res, _$PokemonDetailImpl>
    implements _$$PokemonDetailImplCopyWith<$Res> {
  __$$PokemonDetailImplCopyWithImpl(
      _$PokemonDetailImpl _value, $Res Function(_$PokemonDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_$PokemonDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailImpl implements _PokemonDetail {
  const _$PokemonDetailImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      @JsonKey(name: 'base_experience') required this.baseExperience,
      required final List<PokemonTypeSlot> types,
      required this.sprites})
      : _types = types;

  factory _$PokemonDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  final List<PokemonTypeSlot> _types;
  @override
  List<PokemonTypeSlot> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final Sprites sprites;

  @override
  String toString() {
    return 'PokemonDetail(id: $id, name: $name, height: $height, weight: $weight, baseExperience: $baseExperience, types: $types, sprites: $sprites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, height, weight,
      baseExperience, const DeepCollectionEquality().hash(_types), sprites);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      __$$PokemonDetailImplCopyWithImpl<_$PokemonDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetail implements PokemonDetail {
  const factory _PokemonDetail(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      @JsonKey(name: 'base_experience') required final int baseExperience,
      required final List<PokemonTypeSlot> types,
      required final Sprites sprites}) = _$PokemonDetailImpl;

  factory _PokemonDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  List<PokemonTypeSlot> get types;
  @override
  Sprites get sprites;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailImplCopyWith<_$PokemonDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) {
  return _PokemonTypeSlot.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeSlot {
  int get slot => throw _privateConstructorUsedError;
  NamedApiResource get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeSlotCopyWith<$Res> {
  factory $PokemonTypeSlotCopyWith(
          PokemonTypeSlot value, $Res Function(PokemonTypeSlot) then) =
      _$PokemonTypeSlotCopyWithImpl<$Res, PokemonTypeSlot>;
  @useResult
  $Res call({int slot, NamedApiResource type});

  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res, $Val extends PokemonTypeSlot>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get type {
    return $NamedApiResourceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeSlotImplCopyWith<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$$PokemonTypeSlotImplCopyWith(_$PokemonTypeSlotImpl value,
          $Res Function(_$PokemonTypeSlotImpl) then) =
      __$$PokemonTypeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NamedApiResource type});

  @override
  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeSlotImplCopyWithImpl<$Res>
    extends _$PokemonTypeSlotCopyWithImpl<$Res, _$PokemonTypeSlotImpl>
    implements _$$PokemonTypeSlotImplCopyWith<$Res> {
  __$$PokemonTypeSlotImplCopyWithImpl(
      _$PokemonTypeSlotImpl _value, $Res Function(_$PokemonTypeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeSlotImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeSlotImpl implements _PokemonTypeSlot {
  const _$PokemonTypeSlotImpl({required this.slot, required this.type});

  factory _$PokemonTypeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeSlotImplFromJson(json);

  @override
  final int slot;
  @override
  final NamedApiResource type;

  @override
  String toString() {
    return 'PokemonTypeSlot(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeSlotImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeSlotImplCopyWith<_$PokemonTypeSlotImpl> get copyWith =>
      __$$PokemonTypeSlotImplCopyWithImpl<_$PokemonTypeSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeSlotImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeSlot implements PokemonTypeSlot {
  const factory _PokemonTypeSlot(
      {required final int slot,
      required final NamedApiResource type}) = _$PokemonTypeSlotImpl;

  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeSlotImpl.fromJson;

  @override
  int get slot;
  @override
  NamedApiResource get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeSlotImplCopyWith<_$PokemonTypeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) {
  return _NamedApiResource.fromJson(json);
}

/// @nodoc
mixin _$NamedApiResource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedApiResourceCopyWith<NamedApiResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedApiResourceCopyWith<$Res> {
  factory $NamedApiResourceCopyWith(
          NamedApiResource value, $Res Function(NamedApiResource) then) =
      _$NamedApiResourceCopyWithImpl<$Res, NamedApiResource>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedApiResourceCopyWithImpl<$Res, $Val extends NamedApiResource>
    implements $NamedApiResourceCopyWith<$Res> {
  _$NamedApiResourceCopyWithImpl(this._value, this._then);

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
abstract class _$$NamedApiResourceImplCopyWith<$Res>
    implements $NamedApiResourceCopyWith<$Res> {
  factory _$$NamedApiResourceImplCopyWith(_$NamedApiResourceImpl value,
          $Res Function(_$NamedApiResourceImpl) then) =
      __$$NamedApiResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NamedApiResourceImplCopyWithImpl<$Res>
    extends _$NamedApiResourceCopyWithImpl<$Res, _$NamedApiResourceImpl>
    implements _$$NamedApiResourceImplCopyWith<$Res> {
  __$$NamedApiResourceImplCopyWithImpl(_$NamedApiResourceImpl _value,
      $Res Function(_$NamedApiResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NamedApiResourceImpl(
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
class _$NamedApiResourceImpl implements _NamedApiResource {
  const _$NamedApiResourceImpl({required this.name, required this.url});

  factory _$NamedApiResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedApiResourceImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedApiResource(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedApiResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      __$$NamedApiResourceImplCopyWithImpl<_$NamedApiResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedApiResourceImplToJson(
      this,
    );
  }
}

abstract class _NamedApiResource implements NamedApiResource {
  const factory _NamedApiResource(
      {required final String name,
      required final String url}) = _$NamedApiResourceImpl;

  factory _NamedApiResource.fromJson(Map<String, dynamic> json) =
      _$NamedApiResourceImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpritesImplCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$SpritesImplCopyWith(
          _$SpritesImpl value, $Res Function(_$SpritesImpl) then) =
      __$$SpritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class __$$SpritesImplCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$SpritesImpl>
    implements _$$SpritesImplCopyWith<$Res> {
  __$$SpritesImplCopyWithImpl(
      _$SpritesImpl _value, $Res Function(_$SpritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_$SpritesImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesImpl implements _Sprites {
  const _$SpritesImpl({@JsonKey(name: 'front_default') this.frontDefault});

  factory _$SpritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @override
  String toString() {
    return 'Sprites(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      __$$SpritesImplCopyWithImpl<_$SpritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesImplToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites(
          {@JsonKey(name: 'front_default') final String? frontDefault}) =
      _$SpritesImpl;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$SpritesImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
