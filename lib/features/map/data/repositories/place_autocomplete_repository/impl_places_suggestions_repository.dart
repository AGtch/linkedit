import 'package:LinkedIt/features/map/data/repositories/place_autocomplete_repository/places_suggestions_repository.dart';

import '../../data_sources/place_autocomplete_service/place_autocomplete_service.dart';
import '../../models/place_autocomplete_models/place_autocomplete_query.dart';
import '../../models/place_autocomplete_models/place_suggestion.dart';
import '../../models/place_autocomplete_models/selected_place_info.dart';

class ImpPlacesSuggestionsRepository implements PlacesSuggestionsRepository {
  final PlaceAutocompleteService _placeAutocompleteService;

  ImpPlacesSuggestionsRepository(this._placeAutocompleteService);

  @override
  Future<List<SelectedPlaceInfo>> getPlacesSuggestion(
      {required PlaceAutocompleteQuery placeAutocompleteQuery}) async {
    PlaceSuggestion places = await _placeAutocompleteService.getPlaceSuggestion(
      input: placeAutocompleteQuery.input,
      typeOfResponse: placeAutocompleteQuery.suggestionType,
      components: placeAutocompleteQuery.components,
      apiPlaceAutocompleteKey: placeAutocompleteQuery.apiKey,
      sessionToken: placeAutocompleteQuery.sessionToken,
    );
    return places.predictions
        .map((suggestion) => SelectedPlaceInfo(
            description: suggestion.description.toString(),
            placeId: suggestion.placeId.toString()))
        .toList();
  }
}
