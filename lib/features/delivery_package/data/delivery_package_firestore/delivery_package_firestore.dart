import '../models/delivery_package_model.dart';

abstract class DeliveryPackageFireStore {
  const DeliveryPackageFireStore();

  Stream<List<DeliveryPackageModel>> getDeliveryPackage();

  Future<void> saveDeliveryPackage(DeliveryPackageModel deliveryPackage);

  Future<void> deleteDeliveryPackage(String id);

  Future<int> clearCompleted();
}
