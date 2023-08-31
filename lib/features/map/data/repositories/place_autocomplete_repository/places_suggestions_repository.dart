import '../../models/place_autocomplete_models/place_autocomplete_query.dart';
import '../../models/place_autocomplete_models/selected_place_info.dart';

abstract class PlacesSuggestionsRepository {
  Future<List<SelectedPlaceInfo>> getPlacesSuggestion(
      {required PlaceAutocompleteQuery placeAutocompleteQuery});
}
