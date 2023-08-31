import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/place_autocomplete_models/selected_place_info.dart';

part 'place_suggestions_state.freezed.dart';

@freezed
class GoogleAutoCompleteState<T> with _$GoogleAutoCompleteState<T> {
  const factory GoogleAutoCompleteState.initial() = Initial;

  const factory GoogleAutoCompleteState.placesLoading() = PlacesLoading;

  const factory GoogleAutoCompleteState.placesLoaded(
      List<SelectedPlaceInfo> places) = PlacesLoaded<T>;

  const factory GoogleAutoCompleteState.placesErrorState() = PlacesErrorState;
}
