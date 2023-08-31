import 'package:LinkedIt/features/map/data/models/place_details_models/result.dart';
import 'package:json_annotation/json_annotation.dart';

import 'location_coordinates.dart';

part 'place_details.g.dart';

@JsonSerializable()
class PlaceDetails {
  final List<dynamic>? htmlAttributions;
  final Result? result;
  final String? status;

  PlaceDetails({this.htmlAttributions, this.result, this.status});

  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDetailsToJson(this);

  LocationCoordinates? get location => result?.geometry?.coordinates;
}
