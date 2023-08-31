import 'package:dio/dio.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../models/directions_data.dart';

class DirectionsDataSource {
  final Dio _dio;

  DirectionsDataSource(this._dio);

  Future<DirectionsData> fetchDirections(
      {required String destinationAddress,
      required String sourceAddress}) async {
    try {
      final response = await _dio.get(
        "https://maps.googleapis.com/maps/api/directions/json",
        queryParameters: {
          'destination': destinationAddress,
          'origin': sourceAddress,
          'key': googleAPIkey,
        },
      );
      print(
          "response.dataresponse.dataresponse.data response.data response.data ${response.data}");

      return DirectionsData.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
