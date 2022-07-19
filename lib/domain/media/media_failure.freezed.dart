// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFailureCopyWith<$Res> {
  factory $MediaFailureCopyWith(
          MediaFailure value, $Res Function(MediaFailure) then) =
      _$MediaFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MediaFailureCopyWithImpl<$Res> implements $MediaFailureCopyWith<$Res> {
  _$MediaFailureCopyWithImpl(this._value, this._then);

  final MediaFailure _value;
  // ignore: unused_field
  final $Res Function(MediaFailure) _then;
}

/// @nodoc
abstract class _$$MediaServerErrorCopyWith<$Res> {
  factory _$$MediaServerErrorCopyWith(
          _$MediaServerError value, $Res Function(_$MediaServerError) then) =
      __$$MediaServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaServerErrorCopyWithImpl<$Res>
    extends _$MediaFailureCopyWithImpl<$Res>
    implements _$$MediaServerErrorCopyWith<$Res> {
  __$$MediaServerErrorCopyWithImpl(
      _$MediaServerError _value, $Res Function(_$MediaServerError) _then)
      : super(_value, (v) => _then(v as _$MediaServerError));

  @override
  _$MediaServerError get _value => super._value as _$MediaServerError;
}

/// @nodoc

class _$MediaServerError implements MediaServerError {
  const _$MediaServerError();

  @override
  String toString() {
    return 'MediaFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
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
    required TResult Function(MediaServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class MediaServerError implements MediaFailure {
  const factory MediaServerError() = _$MediaServerError;
}
