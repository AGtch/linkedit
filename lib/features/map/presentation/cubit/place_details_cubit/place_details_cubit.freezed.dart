// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeLoading,
    required TResult Function(LocationCoordinates locationCoordinates)
        placeLoadedSuccessfully,
    required TResult Function() placeDetailsError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeLoading,
    TResult? Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult? Function()? placeDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeLoading,
    TResult Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult Function()? placeDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceLoading value) placeLoading,
    required TResult Function(PlaceLoadedSuccessfully value)
        placeLoadedSuccessfully,
    required TResult Function(PlaceDetailsError value) placeDetailsError,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceLoading value)? placeLoading,
    TResult? Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult? Function(PlaceDetailsError value)? placeDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceLoading value)? placeLoading,
    TResult Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult Function(PlaceDetailsError value)? placeDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsStateCopyWith<$Res> {
  factory $PlaceDetailsStateCopyWith(
          PlaceDetailsState value, $Res Function(PlaceDetailsState) then) =
      _$PlaceDetailsStateCopyWithImpl<$Res, PlaceDetailsState>;
}

/// @nodoc
class _$PlaceDetailsStateCopyWithImpl<$Res, $Val extends PlaceDetailsState>
    implements $PlaceDetailsStateCopyWith<$Res> {
  _$PlaceDetailsStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PlaceDetailsStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PlaceDetailsState.initial()';
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
    required TResult Function() placeLoading,
    required TResult Function(LocationCoordinates locationCoordinates)
        placeLoadedSuccessfully,
    required TResult Function() placeDetailsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeLoading,
    TResult? Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult? Function()? placeDetailsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeLoading,
    TResult Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult Function()? placeDetailsError,
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
    required TResult Function(PlaceLoading value) placeLoading,
    required TResult Function(PlaceLoadedSuccessfully value)
        placeLoadedSuccessfully,
    required TResult Function(PlaceDetailsError value) placeDetailsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceLoading value)? placeLoading,
    TResult? Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult? Function(PlaceDetailsError value)? placeDetailsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceLoading value)? placeLoading,
    TResult Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult Function(PlaceDetailsError value)? placeDetailsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PlaceDetailsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$PlaceLoadingCopyWith<$Res> {
  factory _$$PlaceLoadingCopyWith(
          _$PlaceLoading value, $Res Function(_$PlaceLoading) then) =
      __$$PlaceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceLoadingCopyWithImpl<$Res>
    extends _$PlaceDetailsStateCopyWithImpl<$Res, _$PlaceLoading>
    implements _$$PlaceLoadingCopyWith<$Res> {
  __$$PlaceLoadingCopyWithImpl(
      _$PlaceLoading _value, $Res Function(_$PlaceLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceLoading implements PlaceLoading {
  const _$PlaceLoading();

  @override
  String toString() {
    return 'PlaceDetailsState.placeLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeLoading,
    required TResult Function(LocationCoordinates locationCoordinates)
        placeLoadedSuccessfully,
    required TResult Function() placeDetailsError,
  }) {
    return placeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeLoading,
    TResult? Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult? Function()? placeDetailsError,
  }) {
    return placeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeLoading,
    TResult Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult Function()? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeLoading != null) {
      return placeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceLoading value) placeLoading,
    required TResult Function(PlaceLoadedSuccessfully value)
        placeLoadedSuccessfully,
    required TResult Function(PlaceDetailsError value) placeDetailsError,
  }) {
    return placeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceLoading value)? placeLoading,
    TResult? Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult? Function(PlaceDetailsError value)? placeDetailsError,
  }) {
    return placeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceLoading value)? placeLoading,
    TResult Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult Function(PlaceDetailsError value)? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeLoading != null) {
      return placeLoading(this);
    }
    return orElse();
  }
}

abstract class PlaceLoading implements PlaceDetailsState {
  const factory PlaceLoading() = _$PlaceLoading;
}

/// @nodoc
abstract class _$$PlaceLoadedSuccessfullyCopyWith<$Res> {
  factory _$$PlaceLoadedSuccessfullyCopyWith(_$PlaceLoadedSuccessfully value,
          $Res Function(_$PlaceLoadedSuccessfully) then) =
      __$$PlaceLoadedSuccessfullyCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationCoordinates locationCoordinates});
}

/// @nodoc
class __$$PlaceLoadedSuccessfullyCopyWithImpl<$Res>
    extends _$PlaceDetailsStateCopyWithImpl<$Res, _$PlaceLoadedSuccessfully>
    implements _$$PlaceLoadedSuccessfullyCopyWith<$Res> {
  __$$PlaceLoadedSuccessfullyCopyWithImpl(_$PlaceLoadedSuccessfully _value,
      $Res Function(_$PlaceLoadedSuccessfully) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationCoordinates = null,
  }) {
    return _then(_$PlaceLoadedSuccessfully(
      null == locationCoordinates
          ? _value.locationCoordinates
          : locationCoordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
    ));
  }
}

/// @nodoc

class _$PlaceLoadedSuccessfully implements PlaceLoadedSuccessfully {
  const _$PlaceLoadedSuccessfully(this.locationCoordinates);

  @override
  final LocationCoordinates locationCoordinates;

  @override
  String toString() {
    return 'PlaceDetailsState.placeLoadedSuccessfully(locationCoordinates: $locationCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceLoadedSuccessfully &&
            (identical(other.locationCoordinates, locationCoordinates) ||
                other.locationCoordinates == locationCoordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationCoordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceLoadedSuccessfullyCopyWith<_$PlaceLoadedSuccessfully> get copyWith =>
      __$$PlaceLoadedSuccessfullyCopyWithImpl<_$PlaceLoadedSuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeLoading,
    required TResult Function(LocationCoordinates locationCoordinates)
        placeLoadedSuccessfully,
    required TResult Function() placeDetailsError,
  }) {
    return placeLoadedSuccessfully(locationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeLoading,
    TResult? Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult? Function()? placeDetailsError,
  }) {
    return placeLoadedSuccessfully?.call(locationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeLoading,
    TResult Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult Function()? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeLoadedSuccessfully != null) {
      return placeLoadedSuccessfully(locationCoordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceLoading value) placeLoading,
    required TResult Function(PlaceLoadedSuccessfully value)
        placeLoadedSuccessfully,
    required TResult Function(PlaceDetailsError value) placeDetailsError,
  }) {
    return placeLoadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceLoading value)? placeLoading,
    TResult? Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult? Function(PlaceDetailsError value)? placeDetailsError,
  }) {
    return placeLoadedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceLoading value)? placeLoading,
    TResult Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult Function(PlaceDetailsError value)? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeLoadedSuccessfully != null) {
      return placeLoadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class PlaceLoadedSuccessfully implements PlaceDetailsState {
  const factory PlaceLoadedSuccessfully(
          final LocationCoordinates locationCoordinates) =
      _$PlaceLoadedSuccessfully;

  LocationCoordinates get locationCoordinates;
  @JsonKey(ignore: true)
  _$$PlaceLoadedSuccessfullyCopyWith<_$PlaceLoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceDetailsErrorCopyWith<$Res> {
  factory _$$PlaceDetailsErrorCopyWith(
          _$PlaceDetailsError value, $Res Function(_$PlaceDetailsError) then) =
      __$$PlaceDetailsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceDetailsErrorCopyWithImpl<$Res>
    extends _$PlaceDetailsStateCopyWithImpl<$Res, _$PlaceDetailsError>
    implements _$$PlaceDetailsErrorCopyWith<$Res> {
  __$$PlaceDetailsErrorCopyWithImpl(
      _$PlaceDetailsError _value, $Res Function(_$PlaceDetailsError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceDetailsError implements PlaceDetailsError {
  const _$PlaceDetailsError();

  @override
  String toString() {
    return 'PlaceDetailsState.placeDetailsError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceDetailsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeLoading,
    required TResult Function(LocationCoordinates locationCoordinates)
        placeLoadedSuccessfully,
    required TResult Function() placeDetailsError,
  }) {
    return placeDetailsError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeLoading,
    TResult? Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult? Function()? placeDetailsError,
  }) {
    return placeDetailsError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeLoading,
    TResult Function(LocationCoordinates locationCoordinates)?
        placeLoadedSuccessfully,
    TResult Function()? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeDetailsError != null) {
      return placeDetailsError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceLoading value) placeLoading,
    required TResult Function(PlaceLoadedSuccessfully value)
        placeLoadedSuccessfully,
    required TResult Function(PlaceDetailsError value) placeDetailsError,
  }) {
    return placeDetailsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceLoading value)? placeLoading,
    TResult? Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult? Function(PlaceDetailsError value)? placeDetailsError,
  }) {
    return placeDetailsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceLoading value)? placeLoading,
    TResult Function(PlaceLoadedSuccessfully value)? placeLoadedSuccessfully,
    TResult Function(PlaceDetailsError value)? placeDetailsError,
    required TResult orElse(),
  }) {
    if (placeDetailsError != null) {
      return placeDetailsError(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailsError implements PlaceDetailsState {
  const factory PlaceDetailsError() = _$PlaceDetailsError;
}
