// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationCoordinates _$LocationCoordinatesFromJson(Map<String, dynamic> json) =>
    LocationCoordinates(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationCoordinatesToJson(
        LocationCoordinates instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
    };
