import 'package:LinkedIt/features/directions/presentation/cubit/directions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/directions_data.dart';
import '../../data/repositories/directions_repository.dart';

class DirectionsCubit extends Cubit<DirectionsState<DirectionsData>> {
  final DirectionsRepository directionsRepository;

  DirectionsCubit({required this.directionsRepository})
      : super(const DirectionsState.initial());

  Future<void> getDataRoutes(
      {required String destinationAddress,
      required String sourceAddress}) async {
    emit(const DirectionsState.loading());
    try {
      final DirectionsData directionsData =
          await directionsRepository.fetchDirections(
        destinationAddress: destinationAddress,
        sourceAddress: sourceAddress,
      );
      emit(DirectionsState.loaded(directionsData));
    } catch (exception) {
      emit(const DirectionsState.error());
    }
  }
}
