import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/place_details_models/location_coordinates.dart';
import '../../../data/models/place_details_models/place_details_query.dart';
import '../../../data/repositories/place_details_repository/impl_places_details_repository.dart';

part 'place_details_cubit.freezed.dart';
part 'place_details_state.dart';

class PlaceDetailsCubit extends Cubit<PlaceDetailsState> {
  final ImplPlacesDetailsRepository placesDetailsRepository;

  PlaceDetailsCubit({required this.placesDetailsRepository})
      : super(const PlaceDetailsState.initial());

  Future<void> getPlaceDetails(
      {required PlaceDetailsQuery detailsQuery}) async {
    final LocationCoordinates? locationCoordinates =
        await placesDetailsRepository.getPlaceDetails(detailsQuery);
    if (locationCoordinates != null) {
      print("========== longitude ======+++ ${locationCoordinates.longitude}");

      emit(PlaceDetailsState.placeLoadedSuccessfully(locationCoordinates));
    } else {
      emit(const PlaceDetailsState.placeDetailsError());
    }
  }
}
