import '../../models/place_details_models/location_coordinates.dart';
import '../../models/place_details_models/place_details_query.dart';

abstract class PlacesDetailsRepository {
  Future<LocationCoordinates?> getPlaceDetails(PlaceDetailsQuery detailsQuery);
}
