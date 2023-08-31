// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() loading,
    required TResult Function() loginSuccessfully,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccessfully,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? loading,
    TResult Function()? loginSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) loginInitial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(LoginSuccessfullyState value) loginSuccessfully,
    required TResult Function(ErrorInLoginState value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? loginInitial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult? Function(ErrorInLoginState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? loginInitial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult Function(ErrorInLoginState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitial>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitial implements LoginInitial {
  const _$LoginInitial();

  @override
  String toString() {
    return 'LoginState.loginInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() loading,
    required TResult Function() loginSuccessfully,
    required TResult Function() error,
  }) {
    return loginInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccessfully,
    TResult? Function()? error,
  }) {
    return loginInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? loading,
    TResult Function()? loginSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) loginInitial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(LoginSuccessfullyState value) loginSuccessfully,
    required TResult Function(ErrorInLoginState value) error,
  }) {
    return loginInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? loginInitial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult? Function(ErrorInLoginState value)? error,
  }) {
    return loginInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? loginInitial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult Function(ErrorInLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loginInitial != null) {
      return loginInitial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitial;
}

/// @nodoc
abstract class _$$LoadingSignupStateCopyWith<$Res> {
  factory _$$LoadingSignupStateCopyWith(_$LoadingSignupState value,
          $Res Function(_$LoadingSignupState) then) =
      __$$LoadingSignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSignupStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingSignupState>
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
    return 'LoginState.loading()';
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
    required TResult Function() loginInitial,
    required TResult Function() loading,
    required TResult Function() loginSuccessfully,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccessfully,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? loading,
    TResult Function()? loginSuccessfully,
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
    required TResult Function(LoginInitial value) loginInitial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(LoginSuccessfullyState value) loginSuccessfully,
    required TResult Function(ErrorInLoginState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? loginInitial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult? Function(ErrorInLoginState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? loginInitial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult Function(ErrorInLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSignupState implements LoginState {
  const factory LoadingSignupState() = _$LoadingSignupState;
}

/// @nodoc
abstract class _$$LoginSuccessfullyStateCopyWith<$Res> {
  factory _$$LoginSuccessfullyStateCopyWith(_$LoginSuccessfullyState value,
          $Res Function(_$LoginSuccessfullyState) then) =
      __$$LoginSuccessfullyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessfullyStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessfullyState>
    implements _$$LoginSuccessfullyStateCopyWith<$Res> {
  __$$LoginSuccessfullyStateCopyWithImpl(_$LoginSuccessfullyState _value,
      $Res Function(_$LoginSuccessfullyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessfullyState implements LoginSuccessfullyState {
  const _$LoginSuccessfullyState();

  @override
  String toString() {
    return 'LoginState.loginSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessfullyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() loading,
    required TResult Function() loginSuccessfully,
    required TResult Function() error,
  }) {
    return loginSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccessfully,
    TResult? Function()? error,
  }) {
    return loginSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? loading,
    TResult Function()? loginSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loginSuccessfully != null) {
      return loginSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) loginInitial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(LoginSuccessfullyState value) loginSuccessfully,
    required TResult Function(ErrorInLoginState value) error,
  }) {
    return loginSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? loginInitial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult? Function(ErrorInLoginState value)? error,
  }) {
    return loginSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? loginInitial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult Function(ErrorInLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loginSuccessfully != null) {
      return loginSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessfullyState implements LoginState {
  const factory LoginSuccessfullyState() = _$LoginSuccessfullyState;
}

/// @nodoc
abstract class _$$ErrorInLoginStateCopyWith<$Res> {
  factory _$$ErrorInLoginStateCopyWith(
          _$ErrorInLoginState value, $Res Function(_$ErrorInLoginState) then) =
      __$$ErrorInLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorInLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorInLoginState>
    implements _$$ErrorInLoginStateCopyWith<$Res> {
  __$$ErrorInLoginStateCopyWithImpl(
      _$ErrorInLoginState _value, $Res Function(_$ErrorInLoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorInLoginState implements ErrorInLoginState {
  const _$ErrorInLoginState();

  @override
  String toString() {
    return 'LoginState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorInLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitial,
    required TResult Function() loading,
    required TResult Function() loginSuccessfully,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginInitial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccessfully,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitial,
    TResult Function()? loading,
    TResult Function()? loginSuccessfully,
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
    required TResult Function(LoginInitial value) loginInitial,
    required TResult Function(LoadingSignupState value) loading,
    required TResult Function(LoginSuccessfullyState value) loginSuccessfully,
    required TResult Function(ErrorInLoginState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? loginInitial,
    TResult? Function(LoadingSignupState value)? loading,
    TResult? Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult? Function(ErrorInLoginState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? loginInitial,
    TResult Function(LoadingSignupState value)? loading,
    TResult Function(LoginSuccessfullyState value)? loginSuccessfully,
    TResult Function(ErrorInLoginState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorInLoginState implements LoginState {
  const factory ErrorInLoginState() = _$ErrorInLoginState;
}
