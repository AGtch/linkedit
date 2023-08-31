import 'package:bloc/bloc.dart';

import '../../../data/models/place_autocomplete_models/selected_place_info.dart';

part 'selected_place_state.dart';

class SelectedPlaceCubit extends Cubit<SelectedPlaceState> {
  SelectedPlaceCubit() : super(SelectedPlaceInitial());

  void updateSelectedPlace(SelectedPlaceInfo? selectedPlaceInfo) {
    if (selectedPlaceInfo != null) {
      emit(SelectedPlaceSuccessfully(selectedPlaceInfo: selectedPlaceInfo));
    } else {
      emit(SelectedPlaceSuccessFailed());
    }
  }
}
