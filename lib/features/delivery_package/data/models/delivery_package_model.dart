import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_package_model.g.dart';

@JsonSerializable()
class DeliveryPackageModel {
  // final Image packageImage;

  final String packageTitle;
  final String packageDescription;
  final String packageSourceAddress;
  final String packageDestinationAddress;

  @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
  static late GeoPoint packageSourceLocation;
  @JsonKey(fromJson: geoPointFromJson, toJson: geoPointToJson)
  static late GeoPoint packageDestinationLocation;
  double? deliveryCost;
  bool isDelivered = false;

  static GeoPoint geoPointFromJson(Map<String, dynamic> json) =>
      GeoPoint(json['latitude'], json['longitude']);

  static Map<String, dynamic> geoPointToJson(GeoPoint location) => {
        'latitude': location.latitude,
        'longitude': location.longitude,
      };

  DeliveryPackageModel({
    // required this.packageImage,
    required this.packageTitle,
    required this.packageDescription,
    required this.packageSourceAddress,
    // required this._packageSourceLocation,
    required this.packageDestinationAddress,
    // required this.packageDestinationLocation,
    this.deliveryCost = 0.0,
    this.isDelivered = false,
  });

  Map<String, dynamic> toJson() => _$DeliveryPackageModelToJson(this);

  factory DeliveryPackageModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPackageModelFromJson(json);
}
