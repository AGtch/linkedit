import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_coordinates.g.dart';

@JsonSerializable()
class LocationCoordinates {
  @JsonKey(name: 'lat')
  final double latitude;
  @JsonKey(name: 'lng')
  final double longitude;

  LocationCoordinates({required this.latitude, required this.longitude});

  factory LocationCoordinates.fromJson(Map<String, dynamic> json) =>
      _$LocationCoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$LocationCoordinatesToJson(this);
}
