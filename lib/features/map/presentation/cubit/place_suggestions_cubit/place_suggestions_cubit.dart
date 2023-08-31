import 'package:LinkedIt/features/map/presentation/cubit/place_suggestions_cubit/place_suggestions_state.dart';
import 'package:bloc/bloc.dart';

import '../../../data/models/place_autocomplete_models/place_autocomplete_query.dart';
import '../../../data/repositories/place_autocomplete_repository/impl_places_suggestions_repository.dart';

class GoogleAutoCompleteCubit extends Cubit<GoogleAutoCompleteState> {
  final ImpPlacesSuggestionsRepository impPlacesSuggestionsRepository;

  GoogleAutoCompleteCubit({required this.impPlacesSuggestionsRepository})
      : super(const GoogleAutoCompleteState.initial());

  Future<void> getPlacesSuggestions(
      {required PlaceAutocompleteQuery placeAutocompleteQuery}) async {
    emit(const GoogleAutoCompleteState.placesLoading());
    final places = await impPlacesSuggestionsRepository.getPlacesSuggestion(
        placeAutocompleteQuery: placeAutocompleteQuery);
    if (places.isNotEmpty && places.first != null) {
      emit(GoogleAutoCompleteState.placesLoaded(places));
    } else {
      emit(const GoogleAutoCompleteState.placesErrorState());
    }
  }
}
