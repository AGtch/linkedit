import 'package:json_annotation/json_annotation.dart';

import 'location_coordinates.dart';

part 'viewport.g.dart';

@JsonSerializable()
class Viewport {
  final LocationCoordinates? northeast;
  final LocationCoordinates? southwest;

  Viewport({this.northeast, this.southwest});

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);

  Map<String, dynamic> toJson() => _$ViewportToJson(this);
}
