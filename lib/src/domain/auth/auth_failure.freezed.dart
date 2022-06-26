// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailInUse,
    required TResult Function() invalidEmailOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailInUse value) emailInUse,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailInUse,
    required TResult Function() invalidEmailOrPassword,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailInUse value) emailInUse,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$EmailInUseCopyWith<$Res> {
  factory _$$EmailInUseCopyWith(
          _$EmailInUse value, $Res Function(_$EmailInUse) then) =
      __$$EmailInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailInUseCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$EmailInUseCopyWith<$Res> {
  __$$EmailInUseCopyWithImpl(
      _$EmailInUse _value, $Res Function(_$EmailInUse) _then)
      : super(_value, (v) => _then(v as _$EmailInUse));

  @override
  _$EmailInUse get _value => super._value as _$EmailInUse;
}

/// @nodoc

class _$EmailInUse implements EmailInUse {
  const _$EmailInUse();

  @override
  String toString() {
    return 'AuthFailure.emailInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailInUse,
    required TResult Function() invalidEmailOrPassword,
  }) {
    return emailInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
  }) {
    return emailInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (emailInUse != null) {
      return emailInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailInUse value) emailInUse,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
  }) {
    return emailInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
  }) {
    return emailInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (emailInUse != null) {
      return emailInUse(this);
    }
    return orElse();
  }
}

abstract class EmailInUse implements AuthFailure {
  const factory EmailInUse() = _$EmailInUse;
}

/// @nodoc
abstract class _$$InvalidEmailOrPasswordCopyWith<$Res> {
  factory _$$InvalidEmailOrPasswordCopyWith(_$InvalidEmailOrPassword value,
          $Res Function(_$InvalidEmailOrPassword) then) =
      __$$InvalidEmailOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$InvalidEmailOrPasswordCopyWith<$Res> {
  __$$InvalidEmailOrPasswordCopyWithImpl(_$InvalidEmailOrPassword _value,
      $Res Function(_$InvalidEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _$InvalidEmailOrPassword));

  @override
  _$InvalidEmailOrPassword get _value =>
      super._value as _$InvalidEmailOrPassword;
}

/// @nodoc

class _$InvalidEmailOrPassword implements InvalidEmailOrPassword {
  const _$InvalidEmailOrPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailInUse,
    required TResult Function() invalidEmailOrPassword,
  }) {
    return invalidEmailOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
  }) {
    return invalidEmailOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailInUse,
    TResult Function()? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailInUse value) emailInUse,
    required TResult Function(InvalidEmailOrPassword value)
        invalidEmailOrPassword,
  }) {
    return invalidEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
  }) {
    return invalidEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailInUse value)? emailInUse,
    TResult Function(InvalidEmailOrPassword value)? invalidEmailOrPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailOrPassword implements AuthFailure {
  const factory InvalidEmailOrPassword() = _$InvalidEmailOrPassword;
}
