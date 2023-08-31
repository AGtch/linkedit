import '../data_sources/directions_data_sources.dart';
import '../models/directions_data.dart';

class DirectionsRepository {
  final DirectionsDataSource directionsDataSource;

  DirectionsRepository({required this.directionsDataSource});

  Future<DirectionsData> fetchDirections({
    required String destinationAddress,
    required String sourceAddress,
  }) async {
    try {
      return await directionsDataSource.fetchDirections(
        destinationAddress: destinationAddress,
        sourceAddress: sourceAddress,
      );
    } catch (execption) {
      rethrow;
    }
  }
}
