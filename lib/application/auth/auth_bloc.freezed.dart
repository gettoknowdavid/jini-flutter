// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthCheckRequestedCopyWith<$Res> {
  __$$_AuthCheckRequestedCopyWithImpl(
      _$_AuthCheckRequested _value, $Res Function(_$_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _$_AuthCheckRequested));

  @override
  _$_AuthCheckRequested get _value => super._value as _$_AuthCheckRequested;
}

/// @nodoc

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$$_AuthCheckVerifiedCopyWith<$Res> {
  factory _$$_AuthCheckVerifiedCopyWith(_$_AuthCheckVerified value,
          $Res Function(_$_AuthCheckVerified) then) =
      __$$_AuthCheckVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckVerifiedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthCheckVerifiedCopyWith<$Res> {
  __$$_AuthCheckVerifiedCopyWithImpl(
      _$_AuthCheckVerified _value, $Res Function(_$_AuthCheckVerified) _then)
      : super(_value, (v) => _then(v as _$_AuthCheckVerified));

  @override
  _$_AuthCheckVerified get _value => super._value as _$_AuthCheckVerified;
}

/// @nodoc

class _$_AuthCheckVerified implements _AuthCheckVerified {
  const _$_AuthCheckVerified();

  @override
  String toString() {
    return 'AuthEvent.authCheckVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return authCheckVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return authCheckVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (authCheckVerified != null) {
      return authCheckVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return authCheckVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return authCheckVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (authCheckVerified != null) {
      return authCheckVerified(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckVerified implements AuthEvent {
  const factory _AuthCheckVerified() = _$_AuthCheckVerified;
}

/// @nodoc
abstract class _$$_CheckDonorRequirementsMetCopyWith<$Res> {
  factory _$$_CheckDonorRequirementsMetCopyWith(
          _$_CheckDonorRequirementsMet value,
          $Res Function(_$_CheckDonorRequirementsMet) then) =
      __$$_CheckDonorRequirementsMetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckDonorRequirementsMetCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_CheckDonorRequirementsMetCopyWith<$Res> {
  __$$_CheckDonorRequirementsMetCopyWithImpl(
      _$_CheckDonorRequirementsMet _value,
      $Res Function(_$_CheckDonorRequirementsMet) _then)
      : super(_value, (v) => _then(v as _$_CheckDonorRequirementsMet));

  @override
  _$_CheckDonorRequirementsMet get _value =>
      super._value as _$_CheckDonorRequirementsMet;
}

/// @nodoc

class _$_CheckDonorRequirementsMet implements _CheckDonorRequirementsMet {
  const _$_CheckDonorRequirementsMet();

  @override
  String toString() {
    return 'AuthEvent.checkDonorRequirementsMet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckDonorRequirementsMet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return checkDonorRequirementsMet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return checkDonorRequirementsMet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (checkDonorRequirementsMet != null) {
      return checkDonorRequirementsMet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return checkDonorRequirementsMet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return checkDonorRequirementsMet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (checkDonorRequirementsMet != null) {
      return checkDonorRequirementsMet(this);
    }
    return orElse();
  }
}

abstract class _CheckDonorRequirementsMet implements AuthEvent {
  const factory _CheckDonorRequirementsMet() = _$_CheckDonorRequirementsMet;
}

/// @nodoc
abstract class _$$_CheckProfileCompletedCopyWith<$Res> {
  factory _$$_CheckProfileCompletedCopyWith(_$_CheckProfileCompleted value,
          $Res Function(_$_CheckProfileCompleted) then) =
      __$$_CheckProfileCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckProfileCompletedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_CheckProfileCompletedCopyWith<$Res> {
  __$$_CheckProfileCompletedCopyWithImpl(_$_CheckProfileCompleted _value,
      $Res Function(_$_CheckProfileCompleted) _then)
      : super(_value, (v) => _then(v as _$_CheckProfileCompleted));

  @override
  _$_CheckProfileCompleted get _value =>
      super._value as _$_CheckProfileCompleted;
}

/// @nodoc

class _$_CheckProfileCompleted implements _CheckProfileCompleted {
  const _$_CheckProfileCompleted();

  @override
  String toString() {
    return 'AuthEvent.checkProfileCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckProfileCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return checkProfileCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return checkProfileCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (checkProfileCompleted != null) {
      return checkProfileCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return checkProfileCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return checkProfileCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (checkProfileCompleted != null) {
      return checkProfileCompleted(this);
    }
    return orElse();
  }
}

abstract class _CheckProfileCompleted implements AuthEvent {
  const factory _CheckProfileCompleted() = _$_CheckProfileCompleted;
}

/// @nodoc
abstract class _$$_SendVerifiedEmailCopyWith<$Res> {
  factory _$$_SendVerifiedEmailCopyWith(_$_SendVerifiedEmail value,
          $Res Function(_$_SendVerifiedEmail) then) =
      __$$_SendVerifiedEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendVerifiedEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SendVerifiedEmailCopyWith<$Res> {
  __$$_SendVerifiedEmailCopyWithImpl(
      _$_SendVerifiedEmail _value, $Res Function(_$_SendVerifiedEmail) _then)
      : super(_value, (v) => _then(v as _$_SendVerifiedEmail));

  @override
  _$_SendVerifiedEmail get _value => super._value as _$_SendVerifiedEmail;
}

/// @nodoc

class _$_SendVerifiedEmail implements _SendVerifiedEmail {
  const _$_SendVerifiedEmail();

  @override
  String toString() {
    return 'AuthEvent.sendVerifiedEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendVerifiedEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return sendVerifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return sendVerifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (sendVerifiedEmail != null) {
      return sendVerifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return sendVerifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return sendVerifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (sendVerifiedEmail != null) {
      return sendVerifiedEmail(this);
    }
    return orElse();
  }
}

abstract class _SendVerifiedEmail implements AuthEvent {
  const factory _SendVerifiedEmail() = _$_SendVerifiedEmail;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, (v) => _then(v as _$_SignedOut));

  @override
  _$_SignedOut get _value => super._value as _$_SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthEvent.authSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return authSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return authSignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (authSignedOut != null) {
      return authSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return authSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return authSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (authSignedOut != null) {
      return authSignedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthEvent {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$$_OpenMailAppCopyWith<$Res> {
  factory _$$_OpenMailAppCopyWith(
          _$_OpenMailApp value, $Res Function(_$_OpenMailApp) then) =
      __$$_OpenMailAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenMailAppCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_OpenMailAppCopyWith<$Res> {
  __$$_OpenMailAppCopyWithImpl(
      _$_OpenMailApp _value, $Res Function(_$_OpenMailApp) _then)
      : super(_value, (v) => _then(v as _$_OpenMailApp));

  @override
  _$_OpenMailApp get _value => super._value as _$_OpenMailApp;
}

/// @nodoc

class _$_OpenMailApp implements _OpenMailApp {
  const _$_OpenMailApp();

  @override
  String toString() {
    return 'AuthEvent.openMailApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenMailApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() authCheckVerified,
    required TResult Function() checkDonorRequirementsMet,
    required TResult Function() checkProfileCompleted,
    required TResult Function() sendVerifiedEmail,
    required TResult Function() authSignedOut,
    required TResult Function() openMailApp,
  }) {
    return openMailApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
  }) {
    return openMailApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? authCheckVerified,
    TResult Function()? checkDonorRequirementsMet,
    TResult Function()? checkProfileCompleted,
    TResult Function()? sendVerifiedEmail,
    TResult Function()? authSignedOut,
    TResult Function()? openMailApp,
    required TResult orElse(),
  }) {
    if (openMailApp != null) {
      return openMailApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_AuthCheckVerified value) authCheckVerified,
    required TResult Function(_CheckDonorRequirementsMet value)
        checkDonorRequirementsMet,
    required TResult Function(_CheckProfileCompleted value)
        checkProfileCompleted,
    required TResult Function(_SendVerifiedEmail value) sendVerifiedEmail,
    required TResult Function(_SignedOut value) authSignedOut,
    required TResult Function(_OpenMailApp value) openMailApp,
  }) {
    return openMailApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
  }) {
    return openMailApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_AuthCheckVerified value)? authCheckVerified,
    TResult Function(_CheckDonorRequirementsMet value)?
        checkDonorRequirementsMet,
    TResult Function(_CheckProfileCompleted value)? checkProfileCompleted,
    TResult Function(_SendVerifiedEmail value)? sendVerifiedEmail,
    TResult Function(_SignedOut value)? authSignedOut,
    TResult Function(_OpenMailApp value)? openMailApp,
    required TResult orElse(),
  }) {
    if (openMailApp != null) {
      return openMailApp(this);
    }
    return orElse();
  }
}

abstract class _OpenMailApp implements AuthEvent {
  const factory _OpenMailApp() = _$_OpenMailApp;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$AuthLoadingCopyWith<$Res> {
  factory _$$AuthLoadingCopyWith(
          _$AuthLoading value, $Res Function(_$AuthLoading) then) =
      __$$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthLoadingCopyWith<$Res> {
  __$$AuthLoadingCopyWithImpl(
      _$AuthLoading _value, $Res Function(_$AuthLoading) _then)
      : super(_value, (v) => _then(v as _$AuthLoading));

  @override
  _$AuthLoading get _value => super._value as _$AuthLoading;
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class _$$AuthNotLoadingCopyWith<$Res> {
  factory _$$AuthNotLoadingCopyWith(
          _$AuthNotLoading value, $Res Function(_$AuthNotLoading) then) =
      __$$AuthNotLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthNotLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthNotLoadingCopyWith<$Res> {
  __$$AuthNotLoadingCopyWithImpl(
      _$AuthNotLoading _value, $Res Function(_$AuthNotLoading) _then)
      : super(_value, (v) => _then(v as _$AuthNotLoading));

  @override
  _$AuthNotLoading get _value => super._value as _$AuthNotLoading;
}

/// @nodoc

class _$AuthNotLoading implements AuthNotLoading {
  const _$AuthNotLoading();

  @override
  String toString() {
    return 'AuthState.notLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthNotLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return notLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return notLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return notLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class AuthNotLoading implements AuthState {
  const factory AuthNotLoading() = _$AuthNotLoading;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$VerifiedCopyWith<$Res> {
  factory _$$VerifiedCopyWith(
          _$Verified value, $Res Function(_$Verified) then) =
      __$$VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$VerifiedCopyWith<$Res> {
  __$$VerifiedCopyWithImpl(_$Verified _value, $Res Function(_$Verified) _then)
      : super(_value, (v) => _then(v as _$Verified));

  @override
  _$Verified get _value => super._value as _$Verified;
}

/// @nodoc

class _$Verified implements Verified {
  const _$Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class Verified implements AuthState {
  const factory Verified() = _$Verified;
}

/// @nodoc
abstract class _$$UnverifiedCopyWith<$Res> {
  factory _$$UnverifiedCopyWith(
          _$Unverified value, $Res Function(_$Unverified) then) =
      __$$UnverifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnverifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnverifiedCopyWith<$Res> {
  __$$UnverifiedCopyWithImpl(
      _$Unverified _value, $Res Function(_$Unverified) _then)
      : super(_value, (v) => _then(v as _$Unverified));

  @override
  _$Unverified get _value => super._value as _$Unverified;
}

/// @nodoc

class _$Unverified implements Unverified {
  const _$Unverified();

  @override
  String toString() {
    return 'AuthState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unverified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return unverified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return unverified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class Unverified implements AuthState {
  const factory Unverified() = _$Unverified;
}

/// @nodoc
abstract class _$$AwaitingVerifiedCopyWith<$Res> {
  factory _$$AwaitingVerifiedCopyWith(
          _$AwaitingVerified value, $Res Function(_$AwaitingVerified) then) =
      __$$AwaitingVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AwaitingVerifiedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AwaitingVerifiedCopyWith<$Res> {
  __$$AwaitingVerifiedCopyWithImpl(
      _$AwaitingVerified _value, $Res Function(_$AwaitingVerified) _then)
      : super(_value, (v) => _then(v as _$AwaitingVerified));

  @override
  _$AwaitingVerified get _value => super._value as _$AwaitingVerified;
}

/// @nodoc

class _$AwaitingVerified implements AwaitingVerified {
  const _$AwaitingVerified();

  @override
  String toString() {
    return 'AuthState.awaitingVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AwaitingVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return awaitingVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return awaitingVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (awaitingVerified != null) {
      return awaitingVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return awaitingVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return awaitingVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (awaitingVerified != null) {
      return awaitingVerified(this);
    }
    return orElse();
  }
}

abstract class AwaitingVerified implements AuthState {
  const factory AwaitingVerified() = _$AwaitingVerified;
}

/// @nodoc
abstract class _$$DonorFormCompletedCopyWith<$Res> {
  factory _$$DonorFormCompletedCopyWith(_$DonorFormCompleted value,
          $Res Function(_$DonorFormCompleted) then) =
      __$$DonorFormCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DonorFormCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$DonorFormCompletedCopyWith<$Res> {
  __$$DonorFormCompletedCopyWithImpl(
      _$DonorFormCompleted _value, $Res Function(_$DonorFormCompleted) _then)
      : super(_value, (v) => _then(v as _$DonorFormCompleted));

  @override
  _$DonorFormCompleted get _value => super._value as _$DonorFormCompleted;
}

/// @nodoc

class _$DonorFormCompleted implements DonorFormCompleted {
  const _$DonorFormCompleted();

  @override
  String toString() {
    return 'AuthState.donorFormCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DonorFormCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return donorFormCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return donorFormCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (donorFormCompleted != null) {
      return donorFormCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return donorFormCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return donorFormCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (donorFormCompleted != null) {
      return donorFormCompleted(this);
    }
    return orElse();
  }
}

abstract class DonorFormCompleted implements AuthState {
  const factory DonorFormCompleted() = _$DonorFormCompleted;
}

/// @nodoc
abstract class _$$DonorFormNotCompletedCopyWith<$Res> {
  factory _$$DonorFormNotCompletedCopyWith(_$DonorFormNotCompleted value,
          $Res Function(_$DonorFormNotCompleted) then) =
      __$$DonorFormNotCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DonorFormNotCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$DonorFormNotCompletedCopyWith<$Res> {
  __$$DonorFormNotCompletedCopyWithImpl(_$DonorFormNotCompleted _value,
      $Res Function(_$DonorFormNotCompleted) _then)
      : super(_value, (v) => _then(v as _$DonorFormNotCompleted));

  @override
  _$DonorFormNotCompleted get _value => super._value as _$DonorFormNotCompleted;
}

/// @nodoc

class _$DonorFormNotCompleted implements DonorFormNotCompleted {
  const _$DonorFormNotCompleted();

  @override
  String toString() {
    return 'AuthState.donorFormNotCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DonorFormNotCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return donorFormNotCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return donorFormNotCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (donorFormNotCompleted != null) {
      return donorFormNotCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return donorFormNotCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return donorFormNotCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (donorFormNotCompleted != null) {
      return donorFormNotCompleted(this);
    }
    return orElse();
  }
}

abstract class DonorFormNotCompleted implements AuthState {
  const factory DonorFormNotCompleted() = _$DonorFormNotCompleted;
}

/// @nodoc
abstract class _$$ProfileCompletedCopyWith<$Res> {
  factory _$$ProfileCompletedCopyWith(
          _$ProfileCompleted value, $Res Function(_$ProfileCompleted) then) =
      __$$ProfileCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ProfileCompletedCopyWith<$Res> {
  __$$ProfileCompletedCopyWithImpl(
      _$ProfileCompleted _value, $Res Function(_$ProfileCompleted) _then)
      : super(_value, (v) => _then(v as _$ProfileCompleted));

  @override
  _$ProfileCompleted get _value => super._value as _$ProfileCompleted;
}

/// @nodoc

class _$ProfileCompleted implements ProfileCompleted {
  const _$ProfileCompleted();

  @override
  String toString() {
    return 'AuthState.profileCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return profileCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return profileCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (profileCompleted != null) {
      return profileCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return profileCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return profileCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (profileCompleted != null) {
      return profileCompleted(this);
    }
    return orElse();
  }
}

abstract class ProfileCompleted implements AuthState {
  const factory ProfileCompleted() = _$ProfileCompleted;
}

/// @nodoc
abstract class _$$ProfileNotCompletedCopyWith<$Res> {
  factory _$$ProfileNotCompletedCopyWith(_$ProfileNotCompleted value,
          $Res Function(_$ProfileNotCompleted) then) =
      __$$ProfileNotCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileNotCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$ProfileNotCompletedCopyWith<$Res> {
  __$$ProfileNotCompletedCopyWithImpl(
      _$ProfileNotCompleted _value, $Res Function(_$ProfileNotCompleted) _then)
      : super(_value, (v) => _then(v as _$ProfileNotCompleted));

  @override
  _$ProfileNotCompleted get _value => super._value as _$ProfileNotCompleted;
}

/// @nodoc

class _$ProfileNotCompleted implements ProfileNotCompleted {
  const _$ProfileNotCompleted();

  @override
  String toString() {
    return 'AuthState.profileNotCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileNotCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() unverified,
    required TResult Function() awaitingVerified,
    required TResult Function() donorFormCompleted,
    required TResult Function() donorFormNotCompleted,
    required TResult Function() profileCompleted,
    required TResult Function() profileNotCompleted,
  }) {
    return profileNotCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
  }) {
    return profileNotCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? unverified,
    TResult Function()? awaitingVerified,
    TResult Function()? donorFormCompleted,
    TResult Function()? donorFormNotCompleted,
    TResult Function()? profileCompleted,
    TResult Function()? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (profileNotCompleted != null) {
      return profileNotCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthNotLoading value) notLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(Unverified value) unverified,
    required TResult Function(AwaitingVerified value) awaitingVerified,
    required TResult Function(DonorFormCompleted value) donorFormCompleted,
    required TResult Function(DonorFormNotCompleted value)
        donorFormNotCompleted,
    required TResult Function(ProfileCompleted value) profileCompleted,
    required TResult Function(ProfileNotCompleted value) profileNotCompleted,
  }) {
    return profileNotCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
  }) {
    return profileNotCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthNotLoading value)? notLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(Unverified value)? unverified,
    TResult Function(AwaitingVerified value)? awaitingVerified,
    TResult Function(DonorFormCompleted value)? donorFormCompleted,
    TResult Function(DonorFormNotCompleted value)? donorFormNotCompleted,
    TResult Function(ProfileCompleted value)? profileCompleted,
    TResult Function(ProfileNotCompleted value)? profileNotCompleted,
    required TResult orElse(),
  }) {
    if (profileNotCompleted != null) {
      return profileNotCompleted(this);
    }
    return orElse();
  }
}

abstract class ProfileNotCompleted implements AuthState {
  const factory ProfileNotCompleted() = _$ProfileNotCompleted;
}
