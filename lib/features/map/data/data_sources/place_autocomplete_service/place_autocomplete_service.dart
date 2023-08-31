import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../utils/constants/strings/pages_name.dart';
import '../../models/place_autocomplete_models/place_suggestion.dart';

part 'place_autocomplete_service.g.dart';

@RestApi(baseUrl: googleMapApi)
abstract class PlaceAutocompleteService {
  factory PlaceAutocompleteService(Dio dio, {String baseUrl}) =
      _PlaceAutocompleteService;

  @GET('place/autocomplete/json')
  Future<PlaceSuggestion> getPlaceSuggestion({
    @Query('input') required String input,
    @Query('type') required String typeOfResponse,
    @Query('components') required String components,
    @Query('key') required String apiPlaceAutocompleteKey,
    @Query('sessiontoken') required String sessionToken,
  });
}
