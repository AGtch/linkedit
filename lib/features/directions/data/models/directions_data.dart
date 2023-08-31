import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsData {
  final LatLngBounds bounds;
  final List<PointLatLng> polylinePoints;
  final String totalDistance;
  final String totalDuration;
  final LatLng sourceLocation;

  final LatLng destinationLocation;

  DirectionsData({
    required this.bounds,
    required this.polylinePoints,
    required this.totalDistance,
    required this.totalDuration,
    required this.sourceLocation,
    required this.destinationLocation,
  });

  factory DirectionsData.fromJson(Map<String, dynamic> json) {
    final route = _extractRoute(json);
    final bounds = _extractBounds(route);
    final polylinePoints = _extractPolylinePoints(route);
    final leg = _extractLeg(route);
    final totalDistance = _extractTotalDistance(leg);
    final totalDuration = _extractTotalDuration(leg);
    final sourceLocation = _extractSourceLocation(leg);
    final destinationLocation = _extractDestinationLocation(leg);

    return DirectionsData(
      bounds: bounds,
      polylinePoints: polylinePoints,
      totalDistance: totalDistance,
      totalDuration: totalDuration,
      sourceLocation: sourceLocation,
      destinationLocation: destinationLocation,
    );
  }

  static Map<String, dynamic> _extractRoute(Map<String, dynamic> json) {
    final routes = json['routes'];
    if (routes != null && routes.isNotEmpty) {
      return routes[0];
    }
    throw Exception('No routes found in the JSON data');
  }

  static LatLngBounds _extractBounds(Map<String, dynamic> route) {
    final boundsData = route['bounds'];
    if (boundsData != null) {
      final northeast = boundsData['northeast'];
      final southwest = boundsData['southwest'];
      if (northeast != null && southwest != null) {
        return LatLngBounds(
          northeast: LatLng(northeast['lat'], northeast['lng']),
          southwest: LatLng(southwest['lat'], southwest['lng']),
        );
      }
    }
    throw Exception('Invalid bounds data in the route');
  }

  static List<PointLatLng> _extractPolylinePoints(Map<String, dynamic> route) {
    final polylineData = route['overview_polyline'];
    if (polylineData != null) {
      final points = polylineData['points'];
      if (points != null) {
        return PolylinePoints().decodePolyline(points);
      }
    }
    throw Exception('Invalid polyline data in the route');
  }

  static Map<String, dynamic> _extractLeg(Map<String, dynamic> route) {
    final legs = route['legs'];
    if (legs != null && legs.isNotEmpty) {
      return legs[0];
    }
    throw Exception('No legs found in the route');
  }

  static String _extractTotalDistance(Map<String, dynamic> leg) {
    final distanceData = leg['distance'];
    if (distanceData != null) {
      return distanceData['text'] ?? '';
    }
    throw Exception('Invalid distance data in the leg');
  }

  static String _extractTotalDuration(Map<String, dynamic> leg) {
    final durationData = leg['duration'];
    if (durationData != null) {
      return durationData['text'] ?? '';
    }
    throw Exception('Invalid duration data in the leg');
  }

  static _extractSourceLocation(Map<String, dynamic> leg) {
    final startLocation = leg['start_location'];
    if (startLocation != null) {
      return LatLng(startLocation['lat'], startLocation['lng']);
    }
    throw Exception('Invalid start location data in the leg');
  }

  static _extractDestinationLocation(Map<String, dynamic> leg) {
    final endLocation = leg['end_location'];
    if (endLocation != null) {
      return LatLng(endLocation['lat'], endLocation['lng']);
    }
    throw Exception('Invalid end location data in the leg');
  }
}
