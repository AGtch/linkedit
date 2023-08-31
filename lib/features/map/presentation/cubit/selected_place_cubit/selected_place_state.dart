part of 'selected_place_cubit.dart';

abstract class SelectedPlaceState {}

class SelectedPlaceInitial extends SelectedPlaceState {}

class SelectedPlaceSuccessfully extends SelectedPlaceState {
  final SelectedPlaceInfo selectedPlaceInfo;

  SelectedPlaceSuccessfully({required this.selectedPlaceInfo});
}

class SelectedPlaceSuccessFailed extends SelectedPlaceState {}
