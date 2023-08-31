import 'package:freezed_annotation/freezed_annotation.dart';

part "northeast.g.dart";

@JsonSerializable()
class Northeast {
  final double lat;

  final double lng;

  Northeast({required this.lat, required this.lng});

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);

  Map<String, dynamic> toJson() => _$NortheastToJson(this);
}
