// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DirectionsState<DirectionsData> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DirectionsData directionData) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DirectionsData directionData)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DirectionsData directionData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<DirectionsData> value) initial,
    required TResult Function(Loading<DirectionsData> value) loading,
    required TResult Function(Loaded<DirectionsData> value) loaded,
    required TResult Function(Error<DirectionsData> value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<DirectionsData> value)? initial,
    TResult? Function(Loading<DirectionsData> value)? loading,
    TResult? Function(Loaded<DirectionsData> value)? loaded,
    TResult? Function(Error<DirectionsData> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<DirectionsData> value)? initial,
    TResult Function(Loading<DirectionsData> value)? loading,
    TResult Function(Loaded<DirectionsData> value)? loaded,
    TResult Function(Error<DirectionsData> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsStateCopyWith<DirectionsData, $Res> {
  factory $DirectionsStateCopyWith(DirectionsState<DirectionsData> value,
          $Res Function(DirectionsState<DirectionsData>) then) =
      _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
          DirectionsState<DirectionsData>>;
}

/// @nodoc
class _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
        $Val extends DirectionsState<DirectionsData>>
    implements $DirectionsStateCopyWith<DirectionsData, $Res> {
  _$DirectionsStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<DirectionsData, $Res> {
  factory _$$InitialCopyWith(_$Initial<DirectionsData> value,
          $Res Function(_$Initial<DirectionsData>) then) =
      __$$InitialCopyWithImpl<DirectionsData, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<DirectionsData, $Res>
    extends _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
        _$Initial<DirectionsData>>
    implements _$$InitialCopyWith<DirectionsData, $Res> {
  __$$InitialCopyWithImpl(_$Initial<DirectionsData> _value,
      $Res Function(_$Initial<DirectionsData>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial<DirectionsData> implements Initial<DirectionsData> {
  const _$Initial();

  @override
  String toString() {
    return 'DirectionsState<$DirectionsData>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial<DirectionsData>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DirectionsData directionData) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DirectionsData directionData)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DirectionsData directionData)? loaded,
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
    required TResult Function(Initial<DirectionsData> value) initial,
    required TResult Function(Loading<DirectionsData> value) loading,
    required TResult Function(Loaded<DirectionsData> value) loaded,
    required TResult Function(Error<DirectionsData> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<DirectionsData> value)? initial,
    TResult? Function(Loading<DirectionsData> value)? loading,
    TResult? Function(Loaded<DirectionsData> value)? loaded,
    TResult? Function(Error<DirectionsData> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<DirectionsData> value)? initial,
    TResult Function(Loading<DirectionsData> value)? loading,
    TResult Function(Loaded<DirectionsData> value)? loaded,
    TResult Function(Error<DirectionsData> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<DirectionsData>
    implements DirectionsState<DirectionsData> {
  const factory Initial() = _$Initial<DirectionsData>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<DirectionsData, $Res> {
  factory _$$LoadingCopyWith(_$Loading<DirectionsData> value,
          $Res Function(_$Loading<DirectionsData>) then) =
      __$$LoadingCopyWithImpl<DirectionsData, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<DirectionsData, $Res>
    extends _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
        _$Loading<DirectionsData>>
    implements _$$LoadingCopyWith<DirectionsData, $Res> {
  __$$LoadingCopyWithImpl(_$Loading<DirectionsData> _value,
      $Res Function(_$Loading<DirectionsData>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading<DirectionsData> implements Loading<DirectionsData> {
  const _$Loading();

  @override
  String toString() {
    return 'DirectionsState<$DirectionsData>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading<DirectionsData>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DirectionsData directionData) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DirectionsData directionData)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DirectionsData directionData)? loaded,
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
    required TResult Function(Initial<DirectionsData> value) initial,
    required TResult Function(Loading<DirectionsData> value) loading,
    required TResult Function(Loaded<DirectionsData> value) loaded,
    required TResult Function(Error<DirectionsData> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<DirectionsData> value)? initial,
    TResult? Function(Loading<DirectionsData> value)? loading,
    TResult? Function(Loaded<DirectionsData> value)? loaded,
    TResult? Function(Error<DirectionsData> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<DirectionsData> value)? initial,
    TResult Function(Loading<DirectionsData> value)? loading,
    TResult Function(Loaded<DirectionsData> value)? loaded,
    TResult Function(Error<DirectionsData> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<DirectionsData>
    implements DirectionsState<DirectionsData> {
  const factory Loading() = _$Loading<DirectionsData>;
}

/// @nodoc
abstract class _$$LoadedCopyWith<DirectionsData, $Res> {
  factory _$$LoadedCopyWith(_$Loaded<DirectionsData> value,
          $Res Function(_$Loaded<DirectionsData>) then) =
      __$$LoadedCopyWithImpl<DirectionsData, $Res>;
  @useResult
  $Res call({DirectionsData directionData});
}

/// @nodoc
class __$$LoadedCopyWithImpl<DirectionsData, $Res>
    extends _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
        _$Loaded<DirectionsData>>
    implements _$$LoadedCopyWith<DirectionsData, $Res> {
  __$$LoadedCopyWithImpl(_$Loaded<DirectionsData> _value,
      $Res Function(_$Loaded<DirectionsData>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionData = freezed,
  }) {
    return _then(_$Loaded<DirectionsData>(
      freezed == directionData
          ? _value.directionData
          : directionData // ignore: cast_nullable_to_non_nullable
              as DirectionsData,
    ));
  }
}

/// @nodoc

class _$Loaded<DirectionsData> implements Loaded<DirectionsData> {
  _$Loaded(this.directionData);

  @override
  final DirectionsData directionData;

  @override
  String toString() {
    return 'DirectionsState<$DirectionsData>.loaded(directionData: $directionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded<DirectionsData> &&
            const DeepCollectionEquality()
                .equals(other.directionData, directionData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(directionData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<DirectionsData, _$Loaded<DirectionsData>> get copyWith =>
      __$$LoadedCopyWithImpl<DirectionsData, _$Loaded<DirectionsData>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DirectionsData directionData) loaded,
    required TResult Function() error,
  }) {
    return loaded(directionData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DirectionsData directionData)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(directionData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DirectionsData directionData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(directionData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<DirectionsData> value) initial,
    required TResult Function(Loading<DirectionsData> value) loading,
    required TResult Function(Loaded<DirectionsData> value) loaded,
    required TResult Function(Error<DirectionsData> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<DirectionsData> value)? initial,
    TResult? Function(Loading<DirectionsData> value)? loading,
    TResult? Function(Loaded<DirectionsData> value)? loaded,
    TResult? Function(Error<DirectionsData> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<DirectionsData> value)? initial,
    TResult Function(Loading<DirectionsData> value)? loading,
    TResult Function(Loaded<DirectionsData> value)? loaded,
    TResult Function(Error<DirectionsData> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded<DirectionsData>
    implements DirectionsState<DirectionsData> {
  factory Loaded(final DirectionsData directionData) = _$Loaded<DirectionsData>;

  DirectionsData get directionData;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<DirectionsData, _$Loaded<DirectionsData>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<DirectionsData, $Res> {
  factory _$$ErrorCopyWith(_$Error<DirectionsData> value,
          $Res Function(_$Error<DirectionsData>) then) =
      __$$ErrorCopyWithImpl<DirectionsData, $Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<DirectionsData, $Res>
    extends _$DirectionsStateCopyWithImpl<DirectionsData, $Res,
        _$Error<DirectionsData>>
    implements _$$ErrorCopyWith<DirectionsData, $Res> {
  __$$ErrorCopyWithImpl(_$Error<DirectionsData> _value,
      $Res Function(_$Error<DirectionsData>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error<DirectionsData> implements Error<DirectionsData> {
  const _$Error();

  @override
  String toString() {
    return 'DirectionsState<$DirectionsData>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error<DirectionsData>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DirectionsData directionData) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DirectionsData directionData)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DirectionsData directionData)? loaded,
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
    required TResult Function(Initial<DirectionsData> value) initial,
    required TResult Function(Loading<DirectionsData> value) loading,
    required TResult Function(Loaded<DirectionsData> value) loaded,
    required TResult Function(Error<DirectionsData> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<DirectionsData> value)? initial,
    TResult? Function(Loading<DirectionsData> value)? loading,
    TResult? Function(Loaded<DirectionsData> value)? loaded,
    TResult? Function(Error<DirectionsData> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<DirectionsData> value)? initial,
    TResult Function(Loading<DirectionsData> value)? loading,
    TResult Function(Loaded<DirectionsData> value)? loaded,
    TResult Function(Error<DirectionsData> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<DirectionsData>
    implements DirectionsState<DirectionsData> {
  const factory Error() = _$Error<DirectionsData>;
}
