import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/delivery_package_model.dart';

abstract class DeliveryPackageRepository {
  Future<DocumentReference<Map<String, dynamic>>>
      addDeliveryPackageToFirebaseCloudDatabase(
          {required DeliveryPackageModel deliveryPackageModel});

// deleteDeliveryPackageToFirebaseCloudDatabase(
//     {required DeliveryPackageModel deliveryPackageModel});
}
