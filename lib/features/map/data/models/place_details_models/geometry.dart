import 'package:LinkedIt/features/map/data/models/place_details_models/viewport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_coordinates.dart';

part 'geometry.g.dart';

@JsonSerializable()
class Geometry {
  @JsonKey(name: 'location')
  final LocationCoordinates coordinates;
  final Viewport? viewport;

  Geometry({required this.coordinates, required this.viewport});

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
