// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryPackageModel _$DeliveryPackageModelFromJson(
        Map<String, dynamic> json) =>
    DeliveryPackageModel(
      packageTitle: json['packageTitle'] as String,
      packageDescription: json['packageDescription'] as String,
      packageSourceAddress: json['packageSourceAddress'] as String,
      packageDestinationAddress: json['packageDestinationAddress'] as String,
      deliveryCost: (json['deliveryCost'] as num?)?.toDouble() ?? 0.0,
      isDelivered: json['isDelivered'] as bool? ?? false,
    );

Map<String, dynamic> _$DeliveryPackageModelToJson(
        DeliveryPackageModel instance) =>
    <String, dynamic>{
      'packageTitle': instance.packageTitle,
      'packageDescription': instance.packageDescription,
      'packageSourceAddress': instance.packageSourceAddress,
      'packageDestinationAddress': instance.packageDestinationAddress,
      'deliveryCost': instance.deliveryCost,
      'isDelivered': instance.isDelivered,
    };
