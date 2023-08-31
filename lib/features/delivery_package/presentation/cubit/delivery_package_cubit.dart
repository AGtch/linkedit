import 'package:bloc/bloc.dart';

import '../../data/models/delivery_package_model.dart';
import '../../data/repositories/firebase_delivery_package_repository.dart';
import 'delivery_package_state.dart';

class AddingDeliveryPackageCubit extends Cubit<AddingDeliveryPackageState> {
  final FirebaseDeliveryPackageRepository firebaseDeliveryPackageRepository;

  AddingDeliveryPackageCubit({required this.firebaseDeliveryPackageRepository})
      : super(const AddingDeliveryPackageState.initial());

  Future<void> addDeliveryPackageToFirebaseStore(
      {required DeliveryPackageModel deliveryPackageModel}) async {
    emit(AddingDeliveryPackageState.addingPackage());
    final deliveryPackage = await firebaseDeliveryPackageRepository
        .addDeliveryPackageToFirebaseCloudDatabase(
            deliveryPackageModel: deliveryPackageModel);
    if (deliveryPackage.path.isNotEmpty) {
      emit(const AddingDeliveryPackageState.addingPackageSuccess());
    } else {
      emit(const AddingDeliveryPackageState.addingPackageError());
    }
  }
}
