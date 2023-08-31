import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../utils/constants/strings/pages_name.dart';
import '../../models/place_details_models/place_details.dart';

part 'place_details_service.g.dart';

@RestApi(baseUrl: googleMapApi)
abstract class PlaceDetailsService {
  factory PlaceDetailsService(Dio dio, {String baseUrl}) = _PlaceDetailsService;

  @GET('place/details/json')
  Future<PlaceDetails> getPlaceDetails({
    @Query('place_id') required String placeId,
    @Query('key') required String apiPlaceAutocompleteKey,
    @Query('fields') required String fields,
    @Query('sessiontoken') required String sessionToken,
  });
}
