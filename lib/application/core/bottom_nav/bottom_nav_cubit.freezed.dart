// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavState {
  String get title => throw _privateConstructorUsedError;
  Widget get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
  $Res call({String title, Widget body});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc
abstract class _$$_BottomNavStateCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$$_BottomNavStateCopyWith(
          _$_BottomNavState value, $Res Function(_$_BottomNavState) then) =
      __$$_BottomNavStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, Widget body});
}

/// @nodoc
class __$$_BottomNavStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements _$$_BottomNavStateCopyWith<$Res> {
  __$$_BottomNavStateCopyWithImpl(
      _$_BottomNavState _value, $Res Function(_$_BottomNavState) _then)
      : super(_value, (v) => _then(v as _$_BottomNavState));

  @override
  _$_BottomNavState get _value => super._value as _$_BottomNavState;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_BottomNavState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_BottomNavState implements _BottomNavState {
  const _$_BottomNavState({required this.title, required this.body});

  @override
  final String title;
  @override
  final Widget body;

  @override
  String toString() {
    return 'BottomNavState(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_BottomNavStateCopyWith<_$_BottomNavState> get copyWith =>
      __$$_BottomNavStateCopyWithImpl<_$_BottomNavState>(this, _$identity);
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState(
      {required final String title,
      required final Widget body}) = _$_BottomNavState;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Widget get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavStateCopyWith<_$_BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}
