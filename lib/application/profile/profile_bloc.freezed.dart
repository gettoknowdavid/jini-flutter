// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) editPressed,
    required TResult Function() profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ProfileEditPressed value) editPressed,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) editPressed,
    required TResult Function() profileUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ProfileEditPressed value) editPressed,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ProfileEditPressedCopyWith<$Res> {
  factory _$$_ProfileEditPressedCopyWith(_$_ProfileEditPressed value,
          $Res Function(_$_ProfileEditPressed) then) =
      __$$_ProfileEditPressedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$$_ProfileEditPressedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_ProfileEditPressedCopyWith<$Res> {
  __$$_ProfileEditPressedCopyWithImpl(
      _$_ProfileEditPressed _value, $Res Function(_$_ProfileEditPressed) _then)
      : super(_value, (v) => _then(v as _$_ProfileEditPressed));

  @override
  _$_ProfileEditPressed get _value => super._value as _$_ProfileEditPressed;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProfileEditPressed(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileEditPressed implements _ProfileEditPressed {
  const _$_ProfileEditPressed(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'ProfileEvent.editPressed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEditPressed &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileEditPressedCopyWith<_$_ProfileEditPressed> get copyWith =>
      __$$_ProfileEditPressedCopyWithImpl<_$_ProfileEditPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) editPressed,
    required TResult Function() profileUpdated,
  }) {
    return editPressed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
  }) {
    return editPressed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ProfileEditPressed value) editPressed,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) {
    return editPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) {
    return editPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed(this);
    }
    return orElse();
  }
}

abstract class _ProfileEditPressed implements ProfileEvent {
  const factory _ProfileEditPressed(final bool value) = _$_ProfileEditPressed;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProfileEditPressedCopyWith<_$_ProfileEditPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileUpdatedCopyWith<$Res> {
  factory _$$_ProfileUpdatedCopyWith(
          _$_ProfileUpdated value, $Res Function(_$_ProfileUpdated) then) =
      __$$_ProfileUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileUpdatedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_ProfileUpdatedCopyWith<$Res> {
  __$$_ProfileUpdatedCopyWithImpl(
      _$_ProfileUpdated _value, $Res Function(_$_ProfileUpdated) _then)
      : super(_value, (v) => _then(v as _$_ProfileUpdated));

  @override
  _$_ProfileUpdated get _value => super._value as _$_ProfileUpdated;
}

/// @nodoc

class _$_ProfileUpdated implements _ProfileUpdated {
  const _$_ProfileUpdated();

  @override
  String toString() {
    return 'ProfileEvent.profileUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) editPressed,
    required TResult Function() profileUpdated,
  }) {
    return profileUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
  }) {
    return profileUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? editPressed,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ProfileEditPressed value) editPressed,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) {
    return profileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) {
    return profileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ProfileEditPressed value)? editPressed,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(this);
    }
    return orElse();
  }
}

abstract class _ProfileUpdated implements ProfileEvent {
  const factory _ProfileUpdated() = _$_ProfileUpdated;
}

/// @nodoc
mixin _$ProfileState {
  bool get isEditing => throw _privateConstructorUsedError;
  IName get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({bool isEditing, IName name});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? isEditing = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IName,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEditing, IName name});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? isEditing = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ProfileState(
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IName,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState({required this.isEditing, required this.name});

  @override
  final bool isEditing;
  @override
  final IName name;

  @override
  String toString() {
    return 'ProfileState(isEditing: $isEditing, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isEditing,
      required final IName name}) = _$_ProfileState;

  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  IName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
