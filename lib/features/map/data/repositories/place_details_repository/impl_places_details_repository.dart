import 'package:LinkedIt/features/map/data/repositories/place_details_repository/places_details_repository.dart';

import '../../data_sources/place_details_service/place_details_service.dart';
import '../../models/place_details_models/location_coordinates.dart';
import '../../models/place_details_models/place_details.dart';
import '../../models/place_details_models/place_details_query.dart';

class ImplPlacesDetailsRepository implements PlacesDetailsRepository {
  final PlaceDetailsService placeDetailsService;

  @override
  Future<LocationCoordinates?> getPlaceDetails(
      PlaceDetailsQuery detailsQuery) async {
    PlaceDetails? placeDetails = await placeDetailsService.getPlaceDetails(
        placeId: detailsQuery.placeId,
        apiPlaceAutocompleteKey: detailsQuery.apiPlaceAutocompleteKey,
        fields: detailsQuery.fields,
        sessionToken: detailsQuery.sessionToken);
    return placeDetails.result!.geometry!.coordinates;
  }

  ImplPlacesDetailsRepository({required this.placeDetailsService});
}
