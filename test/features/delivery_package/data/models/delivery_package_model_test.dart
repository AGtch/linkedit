// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:linkedit/features/delivery_package/data/models/delivery_package_model.dart';
//
// void main() {
//   group('Group of tests to delivery package model ', () {
//     test('create a delivery package with a correct value', () {
//       final Image packageImage = Image.asset('image_test');
//
//       const String packageTitle = 'test package Title';
//       const String packageDescription = 'test package Description';
//       // cairo
//       final GeoPoint packageSource = GeoPoint(30.033333, 31.233334);
//       final GeoPoint packageDestination = GeoPoint(31.205753, 29.924526);
//
//       final DeliveryPackageModel deliveryPackageModel = DeliveryPackageModel(
//           // packageImage: packageImage,
//           packageTitle: packageTitle,
//           id: '1',
//           packageDescription: packageDescription,
//           packageSource: packageSource,
//           packageDestination: packageDestination);
//       // Assert
//       // expect(deliveryPackageModel.packageImage, packageImage);
//       expect(deliveryPackageModel.packageTitle, packageTitle);
//       expect(deliveryPackageModel.packageDescription, packageDescription);
//       expect(deliveryPackageModel.packageSource, packageSource);
//       expect(deliveryPackageModel.packageDestination, packageDestination);
//       expect(deliveryPackageModel.deliveryCost, 30);
//       expect(deliveryPackageModel.isDelivered, true);
//     });
//   });
// }
