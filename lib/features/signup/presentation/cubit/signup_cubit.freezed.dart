// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() createUserSuccessfully,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? createUserSuccessfully,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? createUserSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignupState value) initial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(CreateUserSuccessfullyState value)
        createUserSuccessfully,
    required TResult Function(ErrorInSignupState value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignupState value)? initial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(CreateUserSuccessfullyState value)?
        createUserSuccessfully,
    TResult? Function(ErrorInSignupState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignupState value)? initial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(CreateUserSuccessfullyState value)? createUserSuccessfully,
    TResult Function(ErrorInSignupState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignupStateCopyWith<$Res> {
  factory _$$InitialSignupStateCopyWith(_$InitialSignupState value,
          $Res Function(_$InitialSignupState) then) =
      __$$InitialSignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialSignupState>
    implements _$$InitialSignupStateCopyWith<$Res> {
  __$$InitialSignupStateCopyWithImpl(
      _$InitialSignupState _value, $Res Function(_$InitialSignupState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignupState implements InitialSignupState {
  const _$InitialSignupState();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() createUserSuccessfully,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? createUserSuccessfully,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? createUserSuccessfully,
    TResult Function()? error,
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
    required TResult Function(InitialSignupState value) initial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(CreateUserSuccessfullyState value)
        createUserSuccessfully,
    required TResult Function(ErrorInSignupState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignupState value)? initial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(CreateUserSuccessfullyState value)?
        createUserSuccessfully,
    TResult? Function(ErrorInSignupState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignupState value)? initial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(CreateUserSuccessfullyState value)? createUserSuccessfully,
    TResult Function(ErrorInSignupState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSignupState implements SignupState {
  const factory InitialSignupState() = _$InitialSignupState;
}

/// @nodoc
abstract class _$$LoadingSignupStateCopyWith<$Res> {
  factory _$$LoadingSignupStateCopyWith(_$LoadingSignupState value,
          $Res Function(_$LoadingSignupState) then) =
      __$$LoadingSignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$LoadingSignupState>
    implements _$$LoadingSignupStateCopyWith<$Res> {
  __$$LoadingSignupStateCopyWithImpl(
      _$LoadingSignupState _value, $Res Function(_$LoadingSignupState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSignupState implements LoadingSignupState {
  const _$LoadingSignupState();

  @override
  String toString() {
    return 'SignupState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSignupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() createUserSuccessfully,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? createUserSuccessfully,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? createUserSuccessfully,
    TResult Function()? error,
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
    required TResult Function(InitialSignupState value) initial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(CreateUserSuccessfullyState value)
        createUserSuccessfully,
    required TResult Function(ErrorInSignupState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignupState value)? initial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(CreateUserSuccessfullyState value)?
        createUserSuccessfully,
    TResult? Function(ErrorInSignupState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignupState value)? initial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(CreateUserSuccessfullyState value)? createUserSuccessfully,
    TResult Function(ErrorInSignupState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSignupState implements SignupState {
  const factory LoadingSignupState() = _$LoadingSignupState;
}

/// @nodoc
abstract class _$$CreateUserSuccessfullyStateCopyWith<$Res> {
  factory _$$CreateUserSuccessfullyStateCopyWith(
          _$CreateUserSuccessfullyState value,
          $Res Function(_$CreateUserSuccessfullyState) then) =
      __$$CreateUserSuccessfullyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateUserSuccessfullyStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$CreateUserSuccessfullyState>
    implements _$$CreateUserSuccessfullyStateCopyWith<$Res> {
  __$$CreateUserSuccessfullyStateCopyWithImpl(
      _$CreateUserSuccessfullyState _value,
      $Res Function(_$CreateUserSuccessfullyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateUserSuccessfullyState implements CreateUserSuccessfullyState {
  const _$CreateUserSuccessfullyState();

  @override
  String toString() {
    return 'SignupState.createUserSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessfullyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() createUserSuccessfully,
    required TResult Function() error,
  }) {
    return createUserSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? createUserSuccessfully,
    TResult? Function()? error,
  }) {
    return createUserSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? createUserSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (createUserSuccessfully != null) {
      return createUserSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignupState value) initial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(CreateUserSuccessfullyState value)
        createUserSuccessfully,
    required TResult Function(ErrorInSignupState value) error,
  }) {
    return createUserSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignupState value)? initial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(CreateUserSuccessfullyState value)?
        createUserSuccessfully,
    TResult? Function(ErrorInSignupState value)? error,
  }) {
    return createUserSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignupState value)? initial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(CreateUserSuccessfullyState value)? createUserSuccessfully,
    TResult Function(ErrorInSignupState value)? error,
    required TResult orElse(),
  }) {
    if (createUserSuccessfully != null) {
      return createUserSuccessfully(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessfullyState implements SignupState {
  const factory CreateUserSuccessfullyState() = _$CreateUserSuccessfullyState;
}

/// @nodoc
abstract class _$$ErrorInSignupStateCopyWith<$Res> {
  factory _$$ErrorInSignupStateCopyWith(_$ErrorInSignupState value,
          $Res Function(_$ErrorInSignupState) then) =
      __$$ErrorInSignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorInSignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$ErrorInSignupState>
    implements _$$ErrorInSignupStateCopyWith<$Res> {
  __$$ErrorInSignupStateCopyWithImpl(
      _$ErrorInSignupState _value, $Res Function(_$ErrorInSignupState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorInSignupState implements ErrorInSignupState {
  const _$ErrorInSignupState();

  @override
  String toString() {
    return 'SignupState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorInSignupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() createUserSuccessfully,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? createUserSuccessfully,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? createUserSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignupState value) initial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(CreateUserSuccessfullyState value)
        createUserSuccessfully,
    required TResult Function(ErrorInSignupState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignupState value)? initial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(CreateUserSuccessfullyState value)?
        createUserSuccessfully,
    TResult? Function(ErrorInSignupState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignupState value)? initial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(CreateUserSuccessfullyState value)? createUserSuccessfully,
    TResult Function(ErrorInSignupState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorInSignupState implements SignupState {
  const factory ErrorInSignupState() = _$ErrorInSignupState;
}
