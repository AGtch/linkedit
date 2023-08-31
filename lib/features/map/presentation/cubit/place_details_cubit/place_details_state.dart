part of 'place_details_cubit.dart';

@freezed
class PlaceDetailsState with _$PlaceDetailsState {
  const factory PlaceDetailsState.initial() = Initial;

  const factory PlaceDetailsState.placeLoading() = PlaceLoading;

  const factory PlaceDetailsState.placeLoadedSuccessfully(
      LocationCoordinates locationCoordinates) = PlaceLoadedSuccessfully;

  const factory PlaceDetailsState.placeDetailsError() = PlaceDetailsError;
}
