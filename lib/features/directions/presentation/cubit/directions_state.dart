import 'package:freezed_annotation/freezed_annotation.dart';

part 'directions_state.freezed.dart';

@freezed
class DirectionsState<DirectionsData> with _$DirectionsState<DirectionsData> {
  const factory DirectionsState.initial() = Initial;

  const factory DirectionsState.loading() = Loading;

  factory DirectionsState.loaded(DirectionsData directionData) =
      Loaded<DirectionsData>;

  const factory DirectionsState.error() = Error;
}
