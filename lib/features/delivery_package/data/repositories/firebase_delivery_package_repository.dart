import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/delivery_package_model.dart';
import 'delivery_package_repository.dart';

class FirebaseDeliveryPackageRepository implements DeliveryPackageRepository {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;

  FirebaseDeliveryPackageRepository(
      {required this.firebaseFirestore, required this.firebaseAuth});

  @override
  Future<DocumentReference<Map<String, dynamic>>>
      addDeliveryPackageToFirebaseCloudDatabase(
          {required DeliveryPackageModel deliveryPackageModel}) async {
    Map<String, dynamic> deliveryPackage = {
      'deliveryCost': deliveryPackageModel.deliveryCost,
      'isDelivered': deliveryPackageModel.isDelivered,
      'packageDescription': deliveryPackageModel.packageDescription,
      'packageDestinationLocation':
          DeliveryPackageModel.packageDestinationLocation,
      'packageDestinationAddress':
          deliveryPackageModel.packageDestinationAddress,
      'packageSourceAddress': deliveryPackageModel.packageSourceAddress,
      'packageSourceLocation': DeliveryPackageModel.packageSourceLocation,
      'packageTitle': deliveryPackageModel.packageTitle,
    };
    return await firebaseFirestore
        .collection('deliveryPackage')
        .doc(firebaseAuth.currentUser?.uid)
        .collection('user_deliveryPackage')
        .add(deliveryPackage);
  }
//
// @override
// deleteDeliveryPackageToFirebaseCloudDatabase(
//     {required DeliveryPackageModel deliveryPackageModel}) {
//   // TODO: implement deleteDeliveryPackageToFirebaseCloudDatabase
//   throw UnimplementedError();
// }
}
