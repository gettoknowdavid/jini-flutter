// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BloodGroup bloodGroup) bloodGroupSelected,
    required TResult Function() createPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BloodGroupSelected value) bloodGroupSelected,
    required TResult Function(_CreatePressed value) createPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestEventCopyWith<$Res> {
  factory $CreateRequestEventCopyWith(
          CreateRequestEvent value, $Res Function(CreateRequestEvent) then) =
      _$CreateRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRequestEventCopyWithImpl<$Res>
    implements $CreateRequestEventCopyWith<$Res> {
  _$CreateRequestEventCopyWithImpl(this._value, this._then);

  final CreateRequestEvent _value;
  // ignore: unused_field
  final $Res Function(CreateRequestEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res>
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
    return 'CreateRequestEvent.started()';
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
    required TResult Function(BloodGroup bloodGroup) bloodGroupSelected,
    required TResult Function() createPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
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
    required TResult Function(_BloodGroupSelected value) bloodGroupSelected,
    required TResult Function(_CreatePressed value) createPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateRequestEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_BloodGroupSelectedCopyWith<$Res> {
  factory _$$_BloodGroupSelectedCopyWith(_$_BloodGroupSelected value,
          $Res Function(_$_BloodGroupSelected) then) =
      __$$_BloodGroupSelectedCopyWithImpl<$Res>;
  $Res call({BloodGroup bloodGroup});
}

/// @nodoc
class __$$_BloodGroupSelectedCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res>
    implements _$$_BloodGroupSelectedCopyWith<$Res> {
  __$$_BloodGroupSelectedCopyWithImpl(
      _$_BloodGroupSelected _value, $Res Function(_$_BloodGroupSelected) _then)
      : super(_value, (v) => _then(v as _$_BloodGroupSelected));

  @override
  _$_BloodGroupSelected get _value => super._value as _$_BloodGroupSelected;

  @override
  $Res call({
    Object? bloodGroup = freezed,
  }) {
    return _then(_$_BloodGroupSelected(
      bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as BloodGroup,
    ));
  }
}

/// @nodoc

class _$_BloodGroupSelected implements _BloodGroupSelected {
  const _$_BloodGroupSelected(this.bloodGroup);

  @override
  final BloodGroup bloodGroup;

  @override
  String toString() {
    return 'CreateRequestEvent.bloodGroupSelected(bloodGroup: $bloodGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodGroupSelected &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bloodGroup));

  @JsonKey(ignore: true)
  @override
  _$$_BloodGroupSelectedCopyWith<_$_BloodGroupSelected> get copyWith =>
      __$$_BloodGroupSelectedCopyWithImpl<_$_BloodGroupSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BloodGroup bloodGroup) bloodGroupSelected,
    required TResult Function() createPressed,
  }) {
    return bloodGroupSelected(bloodGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
  }) {
    return bloodGroupSelected?.call(bloodGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
    required TResult orElse(),
  }) {
    if (bloodGroupSelected != null) {
      return bloodGroupSelected(bloodGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BloodGroupSelected value) bloodGroupSelected,
    required TResult Function(_CreatePressed value) createPressed,
  }) {
    return bloodGroupSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
  }) {
    return bloodGroupSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
    required TResult orElse(),
  }) {
    if (bloodGroupSelected != null) {
      return bloodGroupSelected(this);
    }
    return orElse();
  }
}

abstract class _BloodGroupSelected implements CreateRequestEvent {
  const factory _BloodGroupSelected(final BloodGroup bloodGroup) =
      _$_BloodGroupSelected;

  BloodGroup get bloodGroup => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_BloodGroupSelectedCopyWith<_$_BloodGroupSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatePressedCopyWith<$Res> {
  factory _$$_CreatePressedCopyWith(
          _$_CreatePressed value, $Res Function(_$_CreatePressed) then) =
      __$$_CreatePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatePressedCopyWithImpl<$Res>
    extends _$CreateRequestEventCopyWithImpl<$Res>
    implements _$$_CreatePressedCopyWith<$Res> {
  __$$_CreatePressedCopyWithImpl(
      _$_CreatePressed _value, $Res Function(_$_CreatePressed) _then)
      : super(_value, (v) => _then(v as _$_CreatePressed));

  @override
  _$_CreatePressed get _value => super._value as _$_CreatePressed;
}

/// @nodoc

class _$_CreatePressed implements _CreatePressed {
  const _$_CreatePressed();

  @override
  String toString() {
    return 'CreateRequestEvent.createPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreatePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BloodGroup bloodGroup) bloodGroupSelected,
    required TResult Function() createPressed,
  }) {
    return createPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
  }) {
    return createPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BloodGroup bloodGroup)? bloodGroupSelected,
    TResult Function()? createPressed,
    required TResult orElse(),
  }) {
    if (createPressed != null) {
      return createPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BloodGroupSelected value) bloodGroupSelected,
    required TResult Function(_CreatePressed value) createPressed,
  }) {
    return createPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
  }) {
    return createPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BloodGroupSelected value)? bloodGroupSelected,
    TResult Function(_CreatePressed value)? createPressed,
    required TResult orElse(),
  }) {
    if (createPressed != null) {
      return createPressed(this);
    }
    return orElse();
  }
}

abstract class _CreatePressed implements CreateRequestEvent {
  const factory _CreatePressed() = _$_CreatePressed;
}

/// @nodoc
mixin _$CreateRequestState {
  JUser get user => throw _privateConstructorUsedError;
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isCreating => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<RequestFailure, Unit>> get createOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRequestStateCopyWith<CreateRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestStateCopyWith<$Res> {
  factory $CreateRequestStateCopyWith(
          CreateRequestState value, $Res Function(CreateRequestState) then) =
      _$CreateRequestStateCopyWithImpl<$Res>;
  $Res call(
      {JUser user,
      IBloodGroup bloodGroup,
      DateTime createdAt,
      bool isCreating,
      bool showErrorMessages,
      Option<Either<RequestFailure, Unit>> createOption});

  $JUserCopyWith<$Res> get user;
}

/// @nodoc
class _$CreateRequestStateCopyWithImpl<$Res>
    implements $CreateRequestStateCopyWith<$Res> {
  _$CreateRequestStateCopyWithImpl(this._value, this._then);

  final CreateRequestState _value;
  // ignore: unused_field
  final $Res Function(CreateRequestState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
    Object? isCreating = freezed,
    Object? showErrorMessages = freezed,
    Object? createOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JUser,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCreating: isCreating == freezed
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      createOption: createOption == freezed
          ? _value.createOption
          : createOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, Unit>>,
    ));
  }

  @override
  $JUserCopyWith<$Res> get user {
    return $JUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateRequestStateCopyWith<$Res>
    implements $CreateRequestStateCopyWith<$Res> {
  factory _$$_CreateRequestStateCopyWith(_$_CreateRequestState value,
          $Res Function(_$_CreateRequestState) then) =
      __$$_CreateRequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {JUser user,
      IBloodGroup bloodGroup,
      DateTime createdAt,
      bool isCreating,
      bool showErrorMessages,
      Option<Either<RequestFailure, Unit>> createOption});

  @override
  $JUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CreateRequestStateCopyWithImpl<$Res>
    extends _$CreateRequestStateCopyWithImpl<$Res>
    implements _$$_CreateRequestStateCopyWith<$Res> {
  __$$_CreateRequestStateCopyWithImpl(
      _$_CreateRequestState _value, $Res Function(_$_CreateRequestState) _then)
      : super(_value, (v) => _then(v as _$_CreateRequestState));

  @override
  _$_CreateRequestState get _value => super._value as _$_CreateRequestState;

  @override
  $Res call({
    Object? user = freezed,
    Object? bloodGroup = freezed,
    Object? createdAt = freezed,
    Object? isCreating = freezed,
    Object? showErrorMessages = freezed,
    Object? createOption = freezed,
  }) {
    return _then(_$_CreateRequestState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JUser,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as IBloodGroup,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCreating: isCreating == freezed
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      createOption: createOption == freezed
          ? _value.createOption
          : createOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateRequestState implements _CreateRequestState {
  const _$_CreateRequestState(
      {required this.user,
      required this.bloodGroup,
      required this.createdAt,
      required this.isCreating,
      required this.showErrorMessages,
      required this.createOption});

  @override
  final JUser user;
  @override
  final IBloodGroup bloodGroup;
  @override
  final DateTime createdAt;
  @override
  final bool isCreating;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<RequestFailure, Unit>> createOption;

  @override
  String toString() {
    return 'CreateRequestState(user: $user, bloodGroup: $bloodGroup, createdAt: $createdAt, isCreating: $isCreating, showErrorMessages: $showErrorMessages, createOption: $createOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRequestState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.isCreating, isCreating) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.createOption, createOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(isCreating),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(createOption));

  @JsonKey(ignore: true)
  @override
  _$$_CreateRequestStateCopyWith<_$_CreateRequestState> get copyWith =>
      __$$_CreateRequestStateCopyWithImpl<_$_CreateRequestState>(
          this, _$identity);
}

abstract class _CreateRequestState implements CreateRequestState {
  const factory _CreateRequestState(
          {required final JUser user,
          required final IBloodGroup bloodGroup,
          required final DateTime createdAt,
          required final bool isCreating,
          required final bool showErrorMessages,
          required final Option<Either<RequestFailure, Unit>> createOption}) =
      _$_CreateRequestState;

  @override
  JUser get user => throw _privateConstructorUsedError;
  @override
  IBloodGroup get bloodGroup => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  bool get isCreating => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<RequestFailure, Unit>> get createOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRequestStateCopyWith<_$_CreateRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
